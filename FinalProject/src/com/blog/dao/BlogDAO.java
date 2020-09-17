package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.blog.dto.BlogVO;

import util.DBManager;

public class BlogDAO {
	private BlogDAO() {	
	}
	
	
	private static BlogDAO instance = new BlogDAO();
	
	public static BlogDAO getInstance() {
		return instance;
	}
	
	public List<BlogVO> selectAllBlogs() {
		String sql = "select * from blog order by readcount desc";
		
		List<BlogVO> list = new ArrayList<BlogVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BlogVO bVo = new BlogVO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setId(rs.getString("id"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				
				
				list.add(bVo);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;		
	}
	
	
	public void updateReadCount(int num) {
		String sql = "update blog set readcount = readcount + 1 where num = ? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
				
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	public BlogVO selectOneBlogByNum(int num) {
		String sql = "select * from blog where num = ?";
		
		BlogVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bVo = new BlogVO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setId(rs.getString("id"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				bVo.setReadcount(rs.getInt("readcount"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	public void insertBlog(BlogVO bVo) {
		String sql = "insert into blog(num, id, title, content) " + "values (blog_seq.nextval, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getId());
			pstmt.setString(2, bVo.getTitle());
			pstmt.setString(3, bVo.getContent());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	public void deleteBlog(int num) {
		String sql = "delete blog where num = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<BlogVO> selectAllBlogById(String id) {
	      // TODO Auto-generated method stub
	      String sql = "select * from blog where id= '" + id + "' order by writedate desc";

	      List<BlogVO> list = new ArrayList<BlogVO>();
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;

	      try {
	         conn = DBManager.getConnection();
	         pstmt = conn.prepareStatement(sql);

	         rs = pstmt.executeQuery(sql);

	         while (rs.next()) {
	            BlogVO bVo = new BlogVO();

	            bVo.setNum(rs.getInt("num"));
	            bVo.setId(rs.getString("id"));
	            bVo.setTitle(rs.getString("title"));
	            bVo.setContent(rs.getNString("content"));
	            bVo.setReadcount(rs.getInt("readcount"));
	            bVo.setWritedate(rs.getTimestamp("writedate"));

	            list.add(bVo);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBManager.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	
	public void updateBlog(BlogVO bVo) {
		String sql = "update blog set title = ?, content = ? where num = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getTitle());
			pstmt.setString(2, bVo.getContent());
			pstmt.setInt(3, bVo.getNum());

			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
