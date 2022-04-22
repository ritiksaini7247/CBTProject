package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import com.model.CBTQuestions;
import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

public class CBTQuestionDao {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String SQL;

	/* Get the connection object */
	public CBTQuestionDao() throws ClassNotFoundException, IOException, SQLException {
		con = GetConnection.getConnection();
	}

	/* Method for add question */
	public int addQuestion(CBTQuestions que) throws SQLException {
		SQL = "insert into cbt_test_questions(question,option1,option2,option3,option4,answer,question_type) values('"
				+ que.getQuestion() + "','" + que.getOption1() + "','" + que.getOption2() + "','" + que.getOption3()
				+ "','" + que.getOption4() + "','" + que.getAnswer() + "','" + que.getQuestionType() + "');";
		pstmt = con.prepareStatement(SQL);
		return pstmt.executeUpdate();
	}

	/* Method for get all question */
	public List<CBTQuestions> getAllQuestions() throws SQLException {
		List<CBTQuestions> allQuestions = new ArrayList<>();

		SQL = "SELECT * FROM cbt_test_questions";
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		while (rs.next()) {
			CBTQuestions que = new CBTQuestions();
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
			allQuestions.add(que);
		}
		return allQuestions;
	}

	/* Method for get all question in shuffle order */
	public ArrayList<CBTQuestions> getShuffeledQuestions() throws SQLException {
		ArrayList<CBTQuestions> shuffleQuestions = new ArrayList<>();
		SQL = "SELECT * FROM cbt_test_questions";
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		while (rs.next()) {
			CBTQuestions que = new CBTQuestions();
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
			shuffleQuestions.add(que);
		}

		Collections.shuffle(shuffleQuestions);

		return shuffleQuestions;
	}
	
	/* Method for get all Reasoning question in shuffle order */
	public ArrayList<CBTQuestions> getReasoningShuffeledQuestions() throws SQLException {
		ArrayList<CBTQuestions> reasoningShuffleQuestions = new ArrayList<>();
		SQL = "SELECT * FROM cbt_test_questions where question_type = 'Reasoning'";
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		while (rs.next()) {
			CBTQuestions que = new CBTQuestions();
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
			reasoningShuffleQuestions.add(que);
		}
		Collections.shuffle(reasoningShuffleQuestions);
		return reasoningShuffleQuestions;
	}
	
	/* Method for get all Programming question in shuffle order */
	public ArrayList<CBTQuestions> getProgrammingShuffeledQuestions() throws SQLException {
		ArrayList<CBTQuestions> programmingShuffleQuestions = new ArrayList<>();
		SQL = "SELECT * FROM cbt_test_questions where question_type = 'Programming'";
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		while (rs.next()) {
			CBTQuestions que = new CBTQuestions();
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
			programmingShuffleQuestions.add(que);
		}
		Collections.shuffle(programmingShuffleQuestions);
		return programmingShuffleQuestions;
	}
	
	/* Method for get all Reasoning question in shuffle order */
	public ArrayList<CBTQuestions> getPseudocodeShuffeledQuestions() throws SQLException {
		ArrayList<CBTQuestions> pseudocodeShuffleQuestions = new ArrayList<>();
		SQL = "SELECT * FROM cbt_test_questions where question_type = 'Pseudocode'";
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		while (rs.next()) {
			CBTQuestions que = new CBTQuestions();
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
			pseudocodeShuffleQuestions.add(que);
		}
		Collections.shuffle(pseudocodeShuffleQuestions);
		return pseudocodeShuffleQuestions;
	}

	/* Method for get question by Id */
	public CBTQuestions getQuestionById(int questionId) throws SQLException {
		SQL = "SELECT * FROM cbt_test_questions where question_id = " + questionId;
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		CBTQuestions que = new CBTQuestions();
		while (rs.next()) {
			que.setQuestionid(rs.getInt("question_id"));
			que.setQuestion(rs.getString("question"));
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
			que.setAnswer(rs.getString("answer"));
			que.setQuestionType(rs.getString("question_type"));
		}
		return que;
	}

	/* Method for get number of question */
	public HashMap<String, Integer> getNoOfQuestions() throws SQLException {

		int aptitude = 0, reasoning = 0, math = 0, programming = 0;
		PreparedStatement Rpstmt = con
				.prepareStatement("select * from cbt_test_questions where question_type = 'Reasoning'");
		ResultSet Rrs = Rpstmt.executeQuery();
		while (Rrs.next()) {
			reasoning++;
		}
		PreparedStatement Apstmt = con
				.prepareStatement("select * from cbt_test_questions where question_type = 'Aptitude'");
		ResultSet Ars = Apstmt.executeQuery();
		while (Ars.next()) {
			aptitude++;
		}
		PreparedStatement Ppstmt = con
				.prepareStatement("select * from cbt_test_questions where question_type = 'Programming'");
		ResultSet Prs = Ppstmt.executeQuery();
		while (Prs.next()) {
			programming++;
		}
		PreparedStatement Mpstmt = con
				.prepareStatement("select * from cbt_test_questions where question_type = 'Math'");
		ResultSet Mrs = Mpstmt.executeQuery();
		while (Mrs.next()) {
			math++;
		}
		HashMap<String, Integer> result = new HashMap<>();
		result.put("Reasoning", reasoning);
		result.put("Aptitude", aptitude);
		result.put("Programming", programming);
		result.put("Math", math);
		return result;
	}

	public String getOptionByNumberAndQueId(int QuestionId, int noOfOption) throws SQLException {
		String option = "";
		SQL = "select * from cbt_test_questions where question_id = " + QuestionId;
		pstmt = con.prepareStatement(SQL);
		ResultSet rs = pstmt.executeQuery();
		rs = pstmt.executeQuery();
		CBTQuestions que = new CBTQuestions();
		while (rs.next()) {
			que.setOption1(rs.getString("option1"));
			que.setOption2(rs.getString("option2"));
			que.setOption3(rs.getString("option3"));
			que.setOption4(rs.getString("option4"));
		}

		if (noOfOption == 1) {
			option = option + que.getOption1();
		} else if (noOfOption == 2) {
			option = option + que.getOption2();
		} else if (noOfOption == 3) {
			option = option + que.getOption3();
		} else if (noOfOption == 4) {
			option = option + que.getOption4();
		} else {
			option = null;
		}
		return option;
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException {
		System.out.println(new CBTQuestionDao().getOptionByNumberAndQueId(26, 3));
	}

}
