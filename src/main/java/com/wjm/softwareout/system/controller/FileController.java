package com.wjm.softwareout.system.controller;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.ProjectFile;
import com.wjm.softwareout.system.entity.User;
import com.wjm.softwareout.system.service.FileService;
import com.wjm.softwareout.system.service.UserService;
import com.wjm.softwareout.system.utils.IDUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @ClassName FileController
 * @Description TODO 文件上传
 *
 * @Date 2019/07/20 20:02
 * @Version 1.0
 **/
@Controller
@RequestMapping("/file")
@Slf4j
@Api(tags = "文件上传")
public class FileController {

    //从resource.properties文件中将文件存放路径读取出
    @Value("${CONTEXT_DOCBASE}")
    private String CONTEXT_DOCBASE;

    @Autowired
    private UserService userService;

    @Autowired
    private FileService fileService;

    /**
     * 功能描述: 文件上传 TODO:可以优化
     *
     * @param files
     * @param request
     * @return com.wjm.softwareout.system.common.JsonData
     *
     * @Date 17:33 2019/07/23
     */
    @RequestMapping(value = "/upload.json", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "文件上传", notes = "上传头像")
    public JsonData fileUpload(@RequestParam(value = "file", required = false) MultipartFile[] files,
                               HttpServletRequest request) {
        String filePath = CONTEXT_DOCBASE + "/image/";

        String loginname = request.getParameter("loginname");
        log.info("当前: {} 更新头像", loginname);
        /**
         * 封装响应layui文件上传的响应
         */
        Map<String, Object> data = new HashMap<>();

        if (files.length > 0) {
            for (MultipartFile file : files) {
                String originalFilename = file.getOriginalFilename();
                long size = file.getSize();

                String prefix = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
                String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
                String fileName = new Random().nextInt(1000) + prefix + suffix;

                String pathName = filePath + fileName;

                //获取文件访问的url

                File fileDir = new File(filePath);
                log.info("文件保存在 {} 目录中", fileDir.getParentFile());
                //判断当前文件目录是否存在,没有则创建
                if (!fileDir.exists()) {
                    fileDir.mkdirs();
                }
                try {
                    //文件上传
                    file.transferTo(new File(filePath + fileName));
                } catch (IOException e) {
                    log.error("e: {}", e);
                    return JsonData.fail("文件上传失败");
                }

                //打印日志
                log.info("originalFilename: {}, size: {}, suffix: {}, pathName: {}, src: {}, fileName: {}",
                        originalFilename, size, suffix, pathName, fileName, fileName);
                data.put("src", fileName);

                /**
                 * 这里更新头像
                 */
                try {
                    User user = userService.modifyHeadImg(loginname, fileName);
                    data.put("msg", "头像更新成功");
                    /**
                     * 更新session中的 activeUser
                     */
                    request.getSession().setAttribute("user", user);

                    return JsonData.success(data);
                } catch (Exception e) {
                    return JsonData.fail(e.getMessage());
                }
            }
        }
        return JsonData.success(data);
    }


    @RequestMapping("/upload")
    @ResponseBody
    public JsonData uploadFile(@RequestParam("file") MultipartFile[] files) {
        //上传文件路径
        String rootPath = CONTEXT_DOCBASE + "/file";
        String projectFile = "";

        try {

            for (MultipartFile file : files) {

                //原始名称
                String originalFileName = file.getOriginalFilename();
                //文件扩展名
                String ext = FilenameUtils.getExtension(originalFileName);
                //新文件名
                String newFileName = IDUtils.getFileName();
                //新文件
                File newFile = new File(rootPath + File.separator + newFileName + "." + ext);
                //判断目标文件所在目录是否存在
                if (!newFile.getParentFile().exists()) {
                    //如果目标文件所在的目录不存在，则创建父目录
                    newFile.getParentFile().mkdirs();
                }
                //将内存中的数据写入磁盘
                file.transferTo(newFile);
                projectFile = newFile.getPath();
            }
            return JsonData.success("文件上传成功", projectFile);

        } catch (Exception e) {

            e.printStackTrace();

            return JsonData.fail("文件上传失败");

        }


    }


    @RequestMapping(value = "findFileByProjectID.json", method = RequestMethod.GET)
    @ResponseBody
    public JsonData findFilePath(@RequestParam(value = "id", required = true) Integer id) {
        try {
            List<ProjectFile> filePath = fileService.getSendFilePathByProjectID(id);
            return JsonData.success("项目删除成功", filePath);
        } catch (Exception e) {
            return JsonData.fail(e.getMessage());
        }
    }


    @RequestMapping(value = "downloadFile", method = RequestMethod.GET)
    public void download(HttpServletRequest request, HttpServletResponse response, String filePath,String type) throws IOException {


        if (Objects.equals("file", type)) {
            filePath = CONTEXT_DOCBASE + "/file/" + filePath;
        } else {
            filePath = CONTEXT_DOCBASE + "/image/" + filePath;
        }



        //得到要下载的文件
        File file = new File(filePath);

        String filename = file.getName();

        if (!file.exists()) {
            response.setContentType("text/html; charset=UTF-8");//注意text/html，和application/html
            response.getWriter().print("<html><body><script type='text/javascript'>alert('您要下载的资源已被删除！');" +
                    "</script></body></html>");
            response.getWriter().close();
            System.out.println("您要下载的资源已被删除！！");
            return;
        }

        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename, "UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        // 读取要下载的文件，保存到文件输入流
        FileInputStream in = new FileInputStream(filePath);
        // 创建输出流
        OutputStream out = response.getOutputStream();
        // 创建缓冲区
        byte buffer[] = new byte[1024]; // 缓冲区的大小设置是个迷  我也没搞明白
        int len = 0;
        //循环将输入流中的内容读取到缓冲区当中
        while ((len = in.read(buffer)) > 0) {
            out.write(buffer, 0, len);
        }
        //关闭文件输入流
        in.close();
        // 关闭输出流
        out.close();
    }

}
