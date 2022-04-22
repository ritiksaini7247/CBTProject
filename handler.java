package com.controllres;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CBTQuestionDao;

@WebServlet("/handler")
public class handler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("I am ready to get all questions..");

		PrintWriter out = resp.getWriter();

		CBTQuestionDao cbtQuestionDao;
		try {
			cbtQuestionDao = new CBTQuestionDao();

			System.out.println("Reasoning Questions");
			for (int i = 0; i < cbtQuestionDao.getReasoningShuffeledQuestions().size(); i++) {
				System.out.println(i + " question id :  " + req.getParameter("reasoning_question_id_" + i));
				System.out.println(i + " selected option id :  " + req.getParameter("reasoning_selected_option_" + i));

				int selectedOptionId = Integer.parseInt(cbtQuestionDao
						.getQuestionById(Integer.parseInt(req.getParameter("reasoning_question_id_" + i))).getAnswer());
				String optionAnswer = cbtQuestionDao.getOptionByNumberAndQueId(
						Integer.parseInt(req.getParameter("reasoning_question_id_" + i)), selectedOptionId);
				System.out.println("Selected Option :- " + optionAnswer);
			}

			System.out.println("Programming Questions");
			for (int i = 0; i < cbtQuestionDao.getProgrammingShuffeledQuestions().size(); i++) {
				System.out.println(i + " question id :  " + req.getParameter("programming_question_id_" + i));
				System.out
						.println(i + " selected option id :  " + req.getParameter("programming_selected_option_" + i));
			}

			System.out.println("Pseudocode Questions");
			for (int i = 0; i < cbtQuestionDao.getPseudocodeShuffeledQuestions().size(); i++) {
				System.out.println(i + " question id :  " + req.getParameter("pseudocode_selected_option_" + i));
				System.out.println(i + " selected option id :  " + req.getParameter("pseudocode_selected_option_" + i));
			}

		} catch (ClassNotFoundException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//		PrintWriter out = resp.getWriter();
//		CBTQuestionDao questionDao;
//
//		Integer rightAnswer = 0;
//		Integer wrongAnswer = 0;
//		List<Integer> rightAnswerId = new ArrayList<>();
//		List<Integer> wrongAnswerId = new ArrayList<>();
//
//		try {
//			questionDao = new CBTQuestionDao();
//			ArrayList<CBTQuestions> shuffleQuestions = questionDao.getShuffeledQuestions();
//			for (int i = 0; i < shuffleQuestions.size(); i++) {
//				Integer questionID = Integer.parseInt(req.getParameter("question_id_" + i));
//				String selectedOption = req.getParameter("stp_" + i + "_select_option");
//				String answer = questionDao.getQuestionById(questionID).getAnswer();
//				String question = questionDao.getQuestionById(questionID).getQuestion();
//
//				out.println("---------");
//				out.println("Question " + (i + 1));
//				out.println("Selected Option : " + selectedOption);
//				Integer noOfOption = Integer.parseInt(answer);
//				String optionByNumberAndQueId = questionDao.getOptionByNumberAndQueId(questionID, noOfOption);
//				out.println("Right Option Str : " + optionByNumberAndQueId);
//
//				if (selectedOption.equals(optionByNumberAndQueId)) {
//					rightAnswer++;
//					rightAnswerId.add(questionID);
//				} else {
//					wrongAnswer++;
//					wrongAnswerId.add(questionID);
//				}
//
//			}
//
//			out.println("Right Answers : " + rightAnswer);
//			out.println("Rigth Answers Id : " + rightAnswerId);
//			out.println("Wrong Answers : " + wrongAnswer);
//			out.println("Wrong Answers Id : " + wrongAnswerId);
//
//		} catch (ClassNotFoundException | IOException | SQLException e) {
//			e.printStackTrace();
//		}
//
//	}

}
