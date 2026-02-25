package com.diseaseinfo;

import javax.swing.*;
import java.awt.event.*;
import java.sql.*;
import java.awt.*;

public class DisChatbot {
	
	public static void createGUI() {
	    JFrame frame = new JFrame("InfoChatbot");
	    frame.setSize(500, 500);
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    frame.setLayout(null);

	    // Big title at the top
	    JLabel title = new JLabel("INFORMATION CHATBOT");
	    title.setBounds(120, 10, 300, 30);
	    title.setFont(new Font("Arial", Font.BOLD, 16));
	    frame.add(title);

	    // Conversation area (scrollable)
	    JTextArea conversationArea = new JTextArea();
	    conversationArea.setBounds(50, 50, 380, 300);
	    conversationArea.setLineWrap(true);
	    conversationArea.setWrapStyleWord(true);
	    conversationArea.setEditable(false);
	    JScrollPane scrollPane = new JScrollPane(conversationArea);
	    scrollPane.setBounds(50, 50, 380, 300);
	    frame.add(scrollPane);

	    // User input field
	    JTextField userField = new JTextField();
	    userField.setBounds(50, 370, 280, 25);
	    frame.add(userField);

	    // Submit button
	    JButton submitButton = new JButton("Send");
	    submitButton.setBounds(340, 370, 90, 25);
	    frame.add(submitButton);

	    // Typing indicator
	    JLabel typingLabel = new JLabel("");
	    typingLabel.setBounds(50, 400, 200, 25);
	    frame.add(typingLabel);

	    // Initial chatbot message
	    conversationArea.append("Chatbot: Welcome to DiseaseInfoChatbot!\n");
	    conversationArea.append("Chatbot: What disease information do you need?\n\n");

	    // Action when user clicks send
	    submitButton.addActionListener(new ActionListener() {
	        public void actionPerformed(ActionEvent e) {
	            String userInput = userField.getText().trim();
	            if (userInput.isEmpty()) return;

	            // Append user message
	            conversationArea.append("User: " + userInput + "\n");

	            // Clear input field
	            userField.setText("");

	            // Show typing effect
	            typingLabel.setText("Chatbot is typing...");
	            new Thread(() -> {
	                try {
	                    Thread.sleep(500); // 0.5s delay
	                } catch (InterruptedException ex) {
	                    ex.printStackTrace();
	                }

	                // Query database
	                String url = "jdbc:mysql://localhost:3306/healthdb";
	                String user = "root";
	                String password = "Root@123";

	                try {
	                    Connection con = DriverManager.getConnection(url, user, password);
	                    String query = "SELECT * FROM diseases WHERE LOWER(name) = LOWER(?)";
	                    PreparedStatement stmt = con.prepareStatement(query);
	                    stmt.setString(1, userInput);
	                    ResultSet rs = stmt.executeQuery();

	                    if (rs.next()) {
	                        String symptoms = rs.getString("symptoms");
	                        String causes = rs.getString("causes");
	                        String remedies = rs.getString("remedies");

	                        String botReply = "Chatbot: \nSymptoms: " + symptoms +
	                                          "\nCauses: " + causes +
	                                          "\nRemedies: " + remedies + "\n\n" +
	                                          "Chatbot: If you want information on another disease, you can enter the name of it.";
	                        conversationArea.append(botReply + "\n");
	                    } else {
	                        conversationArea.append("Chatbot: Sorry, no information found for '" + userInput + "'.\n\n");
	                        conversationArea.append("Chatbot: Do you want information on another disease?\n");
	                    }

	                    rs.close();
	                    stmt.close();
	                    con.close();
	                } catch (SQLException ex) {
	                    conversationArea.append("Chatbot: Database Error: " + ex.getMessage() + "\n");
	                }

	                // Remove typing
	                typingLabel.setText("");
	            }).start();
	        }
	    });

	    frame.setVisible(true);
	}

	public static void main(String[] args) {
		createGUI();
		
	}

}
