package com.wjm.softwareout.system.service;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.Notice;
import com.wjm.softwareout.system.vo.NoticeVo;


/**
 *
 * @Date: 2019-07-23 10:58
 * @Description TODO
 */
public interface NoticeService {

    JsonData loadAllNoticeInfoByPage(NoticeVo noticeVo);

    void removeNoticeInfoById(Integer noticeId);

    void batchDeleteNoticeByIds(NoticeVo noticeVo);

    void saveNotice(NoticeVo noticeVo);

    void modifyNotice(NoticeVo noticeVo);

    Notice getNoticeInfoById(NoticeVo noticeVo);
}
