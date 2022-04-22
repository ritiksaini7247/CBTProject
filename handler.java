package com.controllres;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CBTQuestionDao;
import com.model.CBTQuestions;

@WebServlet("/handler")
public class handler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		CBTQuestionDao questionDao;

		Integer rightAnswer = 0;
		Integer wrongAnswer = 0;
		List<Integer> rightAnswerId = new ArrayList<>();
		List<Integer> wrongAnswerId = new ArrayList<>();

		try {
			questionDao = new CBTQuestionDao();
			ArrayList<CBTQuestions> shuffleQuestions = questionDao.getShuffeledQuestions();
			for (int i = 0; i < shuffleQuestions.size(); i++) {
				Integer questionID = Integer.parseInt(req.getParameter("question_id_" + i));
				String selectedOption = req.getParameter("stp_" + i + "_select_option");
				String answer = questionDao.getQuestionById(questionID).getAnswer();
				String question = questionDao.getQuestionById(questionID).getQuestion();

				out.println("---------");
				out.println("Question " + (i + 1));
				out.println("Selected Option : " + selectedOption);
				Integer noOfOption = Integer.parseInt(answer);
				String optionByNumberAndQueId = questionDao.getOptionByNumberAndQueId(questionID, noOfOption);
				out.println("Right Option Str : " + optionByNumberAndQueId);

				if (selectedOption.equals(optionByNumberAndQueId)) {
					rightAnswer++;
					rightAnswerId.add(questionID);
				} else {
					wrongAnswer++;
					wrongAnswerId.add(questionID);
				}

			}

			out.println("Right Answers : " + rightAnswer);
			out.println("Rigth Answers Id : " + rightAnswerId);
			out.println("Wrong Answers : " + wrongAnswer);
			out.println("Wrong Answers Id : " + wrongAnswerId);

		} catch (ClassNotFoundException | IOException | SQLException e) {
			e.printStackTrace();
		}

	}

}
