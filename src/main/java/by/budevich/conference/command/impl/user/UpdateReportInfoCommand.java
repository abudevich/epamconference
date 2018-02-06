package by.budevich.conference.command.impl.user;

import by.budevich.conference.command.BaseCommand;
import by.budevich.conference.constant.AttributeConst;
import by.budevich.conference.constant.PageConst;
import by.budevich.conference.constant.ParameterConst;
import by.budevich.conference.entity.Report;
import by.budevich.conference.exception.DAOException;
import by.budevich.conference.exception.ServiceException;
import by.budevich.conference.service.ReportService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Asus on 30.01.2018.
 */
public class UpdateReportInfoCommand implements BaseCommand {
    public static UpdateReportInfoCommand instance = new UpdateReportInfoCommand();

    private UpdateReportInfoCommand() {
    }

    public static UpdateReportInfoCommand getInstance() {
        return instance;
    }

    public String execute(HttpServletRequest request, HttpServletResponse response)
            throws ServiceException, SQLException, DAOException {
        long reportId = Long.parseLong(request.getParameter(ParameterConst.PARAMETER_REPORT_ID));
        Report report = ReportService.getInstance().findReportById(reportId);
        String reportName = request.getParameter(ParameterConst.PARAMETER_REPORT_NAME);
        if (ReportService.getInstance().findReportByName(reportName) == null ||
                reportName.equals(report.getReportName())) {
            report.setReportName(reportName);
            report.setReportTheses(request.getParameter(ParameterConst.PARAMETER_REPORT_THESES));
            report.setReportContent(request.getParameter(ParameterConst.PARAMETER_REPORT_CONTENT));
            ReportService.getInstance().updateReportInfo(report);

            return ViewUserReportsCommand.getInstance().getPage(request, response);
        } else {
            return PageConst.PAGE_ERROR;
        }
    }

    public String getPage(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServiceException, DAOException {
        String reportId = request.getParameter(ParameterConst.PARAMETER_REPORT_ID);
        Report report = ReportService.getInstance().findReportById(Long.parseLong(reportId));
        request.setAttribute(AttributeConst.ATTR_REPORT, report);
        return ViewUserReportsCommand.getInstance().getPage(request, response);
    }
}
