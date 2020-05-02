
#!/usr/bin/env ruby  

	class GuptaK < Shoes
		url "/", :mainscreen
		url "/encrypt", :encryptscreen
		url "/decrypt", :decryptscreen
	
		def mainscreen
		
			# App Menu
		
		    mb = menubar
			helpmenu = menu "Help"
			@cypheritem = menuitem "Reset Keys", key: "alt_shift_r" do
				current_dir = Dir.pwd
				if confirm "This will replace your current cypher keys and makes all currently encrypted files unusable!\n\nProceed?\n", title: "Reset Keys"
					system "start #{current_dir}/reset.exe"
					info "Cypher keys have been reset!"
					if confirm "You will need to restart the application. Close it now?", title: "Reset Keys"
						close
					end
				end
			end
			helpmenu << @cypheritem
			@backupcypheritem = menuitem "Backup Keys", key: "alt_shift_s" do
				if confirm "Are you sure you wish to proceed? This will,\n\n    * Backup your keys to a location of your choice.\n\n    * Expose your keys to anyone you share it with!\n\n    * Allow you to restore new and old backups as required!\n\n", title: "Backup Keys"
					@cypher_backup = ask_save_file title: "Select Backup Location..."
					require 'fileutils'
					FileUtils.cp("assets/keys/crypt.gkey", "#{@cypher_backup}.gkey")
					alert "Keys have been backed up to '#{@cypher_backup}.gkey'!", title: "Backup Keys"
					info "Keys have been backed up to '#{@cypher_backup}.gkey'!"
				end
			end
			helpmenu << @backupcypheritem
			@restorecypheritem = menuitem "Restore Keys", key: "alt_shift_l" do
				if confirm "Are you sure you wish to proceed? This will replace any and all local keys!\n\n", title: "Restore Keys"
					@cypher_restore = ask_open_file title: "Select Restore File...", types: {"GuptaK Key File" => "*.gkey"}
					require 'fileutils'
					FileUtils.cp("#{@cypher_restore}", "assets/temp/crypt.rb")
					require "assets/temp/crypt"
					@@crypt_final = Crypt.class_variable_get(:@@cypher_bak)
					File.open("assets/temp/crypt.rb", "w") {|clear_temp_crypt| clear_temp_crypt.truncate(0)}
					FileUtils.cp("#{@cypher_restore}", "assets/keys/crypt.gkey")
					alert "Keys have been restored using '#{@cypher_restore}'!", title: "Restore Keys"
					info "Keys have been restored using '#{@cypher_restore}'!"
				end
			end
			helpmenu << @restorecypheritem
			docseperator = menuitem "---"
			helpmenu << docseperator
			@licenseitem =  menuitem "View License" do
				alert "Copyright (c) 2019 JDsnyke\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.", title: "MIT License"
			end
			helpmenu << @licenseitem
			updateseperator = menuitem "---"
			helpmenu << updateseperator
			@updateitem =  menuitem "Check for Updates", key: "control_u" do
				current_dir = Dir.pwd
				system "start #{current_dir}/updater.exe"
			end
			helpmenu << @updateitem
			
			@repoitem = menuitem "Visit Repo" do
				repolink = "https://www.github.com/JDsnyke/GuptaK"
				system "start #{repolink}"
			end
			helpmenu << @repoitem
			aboutseperator = menuitem "---"
			helpmenu << aboutseperator
			@aboutitem =  menuitem "About", key: "control_i" do
				current_ver = File.read("assets/version/current.ver")
				alert "Version : #{current_ver}\n\nRuby Version : #{RUBY_VERSION}\n\nShoes Version : #{Shoes::VERSION_NUMBER} - r#{Shoes::VERSION_REVISION}\n\nAuthors : JDsnyke & Thrisen97", title: "About"
			end
			helpmenu << @aboutitem
			mb << helpmenu
			
			# Set @@crypt_final constant at launch
			
			Thread.new do
				require 'fileutils'
				FileUtils.cp("assets/keys/crypt.gkey", "assets/temp/crypt.rb")
				require "assets/temp/crypt"
				@@crypt_final = Crypt.class_variable_get(:@@cypher_bak)
				File.open("assets/temp/crypt.rb", "w") {|clear_temp_crypt| clear_temp_crypt.truncate(0)}	
				info "Loaded constants from temp files!"
			end	
						
			# Delete failed and accidental remnants at launch
			
			Thread.new do
				
				if File.exist?(".gkey")
					File.delete(".gkey")
					info "Failed and accidental remnants were cleaned!"			
				elsif File.exist?(".txt")
					File.delete(".txt")
					info "Failed and accidental remnants were cleaned!"
				end
			end
			
			# Decrepitated shoes ver warning
			
			intalled_shoes_ver = "#{Shoes::VERSION_NUMBER}"
			app_shoes_ver = "3.3.8"
			
			if installed_shoes_ver =! app_shoes_ver
				info "Currently running outdated version of Shoes 3"
				if confirm "An old version of Shoes had been detected.\n\nGuptaK requires Shoes - #{app_shoes_ver} to run properly.\n\nVisit download page?\n", title: "Decrepitated Warning"
					system "start https://walkabout.mvmanila.com/downloads/windows-downloads/"
					info "Launched link to latest shoes binary in the browser!"
				end
			end

			# Body
			
			stack do
				para ""
				flow do
					para "                    "
					button "Encrypt", height: 68, width: 160, tooltip: "Encrypt text and files", icon: "assets/images/encrypt-64.png" do visit "/encrypt" end	
				end
			end
			stack do
				para ""
				flow do
					para "                    "
					button "Decrypt", height: 68, width: 160, tooltip: "Decrypt text and files", icon: "assets/images/decrypt-64.png" do visit "/decrypt" end
				end
			end

		end
		
		def encryptscreen
		
			stack do
				para ""
				flow do
					para "          "
					button "Type-in Message", height: 68, width: 240, icon: "assets/images/encrypt-64.png", tooltip: "Manually enter and encrypt text" do
						window :title => "GuptaK - Encrypt - Type-in Message", height: 440 do
							stack do
								para ""
								flow do
									para "  "
									@encrypt_text = edit_box " Enter your super secret message here!", :height => 300, :width => 570
								end
								@p_info = para "  "
								flow do
									para "  "
									button "Encrypt", stroke: purple, tooltip: "Encrypt content in text-box" do
										Thread.new do
											if @encrypt_text.text() == " Enter your super secret message here!"
												@p_info.text = "  Error! Try typing something in the above text-box!"
												@p_info.stroke = red
												error "Encrypt - Type-in Message :#{@p_info}"
											elsif @encrypt_text.text() == ""
												@p_info.text = "  Error! text-box should not be blank!"
												@p_info.stroke = red
												error "Encrypt - Type-in Message :#{@p_info}"
											elsif @encrypt_text.text() == " "
												@p_info.text = "  Error! text-box should not be blank!"
												@p_info.stroke = red
												error "Encrypt - Type-in Message :#{@p_info}"
											else
												@encrypt_file_string = @encrypt_text.text
												@p_info.text = "  Replacing content, please wait..."
												@p_info.stroke = blue
												i = @encrypt_file_string
												extract = 0
												newstring = ""
												while extract < i.length
													a = i[extract].ord
													b = @@crypt_final[a].to_s
													newstring = newstring + b
													extract = extract + 1
												end
												if @encrypt_text.text.include? ""
													@encrypt_file_string = newstring
												end
												@p_info.text = "  Using secret key and scrambling content, please wait..."
												final_shuffle =  newstring.to_i * @@crypt_final[129].to_i
												final_encrypt = final_shuffle.to_s.reverse 
												@encrypt_text.text = "#{final_encrypt}"
												if @encrypt_text.text() == "0"
													@p_info.text = "  Error!"
													@p_info.stroke = red
													error "Encrypt - Type-in Message :#{@p_info}"
												else 
													@p_info.text = "  Successfully completed!!!"
													@p_info.stroke = green
													info "Encrypted content successfully!"
												end
											end
										end
									end
									para "  "
									button "Copy", tooltip: "Copy content in text-box to clipboard" do 
										self.clipboard = "#{@encrypt_text.text}"
										@p_info.text = "  Current content copied to clipboard!"
										@p_info.stroke = blue
									end
									para "  "
									button "Paste", tooltip: "Paste content in clipboard to text-box" do 
										@encrypt_text.text = clipboard()
										@p_info.text = "  Current clipboard content has been pasted!"
										@p_info.stroke = blue
									end
									para "  "
									button "Clear", tooltip: "Clear content from text-box" do 
										@encrypt_text.text = ""
										@p_info.text = "  Current content has been cleared from the text-box!"
										@p_info.stroke = blue
									end 
									para "  "
									button "Go Back", stroke: red, tooltip: "Go back to the main app window" do
										close
									end
		
								end
							end 										
						end			
					end
				end
				para ""
				flow do
					para "          "
					button "Select Text File", height: 68, width: 240, icon: "assets/images/encrypt-64.png", tooltip: "Select and encrypt txt files" do
						window :title => "GuptaK - Encrypt - Select Text File", height: 340 do
							stack do
								para ""
								flow do
									para "  "
									@encrypt_txt_box = edit_line "Use button below to select file!", :width => 570
								end
								flow do
									para "  "
									button "Select Source File...", tooltip: "Select a .txt file to encrypt" do
										@encrypt_txt_select = ask_open_file title: "Select .txt File...", types: {"Text File" => "*.txt"}											
										@encrypt_txt_box.text = "#{@encrypt_txt_select}"
									end
								end
								para ""
								flow do
									para "  "
									@encrypt_txt_save_box = edit_line "Use button below to select save location!", :width => 570
								end
								flow do
									para "  "
									button "Select Save Location...", tooltip: "Select save location and file name" do
										@encrypt_txt_save_select = ask_save_file title: "Select Save Location...", types: {"Text File" => "*.txt"}
										@encrypt_txt_save_box.text = "#{@encrypt_txt_save_select}"
										@encrypt_txt_save_select_truncate = @encrypt_txt_save_box.text.chomp(".txt")
										@encrypt_txt_save_box.text = "#{@encrypt_txt_save_select_truncate}"
									end
								end
								flow do 
									para "  "
									@pb = progress :width => 570
								end 
								@p_info = para "  "
								flow do
									para "  "
									button "Encrypt", stroke: purple, tooltip: "Encrypt content in txt file" do
										Thread.new do
											if @encrypt_txt_save_box.text() == "Use button below to select save location!"
												@p_info.text = "  Error! Try selecting a save location!"
												@p_info.stroke = red
												error "Encrypt - Select Text File :#{@p_info}"
											elsif @encrypt_txt_save_box.text() == ""
												@p_info.text = "  Error! Save location should not be blank!"
												@p_info.stroke = red
												error "Encrypt - Select Text File :#{@p_info}"
											elsif @encrypt_txt_save_box.text() == " "
												@p_info.text = "  Error! Save location should not be blank!"
												@p_info.stroke = red
												error "Encrypt - Select Text File :#{@p_info}"
											else
												until @pb.fraction = 0.2 do 
													@pb.fraction = 0 + 0.1
												end			
												@p_info.text = "  Reading #{@encrypt_txt_box.text}..."
												@p_info.stroke = blue
												@encrypt_file_string = File.read("#{@encrypt_txt_box.text}")
												until @pb.fraction = 0.4 do
													@pb.fraction = 0.2 + 0.1
												end	
												@p_info.text = "  Replacing content, please wait..."
												i = @encrypt_file_string
												extract = 0 
												newstring = ""
												while extract < i.length
													a = i[extract].ord
													b = @@crypt_final[a].to_s
													newstring = newstring + b
													extract = extract + 1
												end
												@encrypt_file_string = newstring
												until @pb.fraction = 0.6 do 
													@pb.fraction = 0.4 + 0.1
												end
												@p_info.text = "  Using secret key and scrambling content, please wait..."
												final_shuffle =  newstring.to_i * @@crypt_final[129].to_i
												final_encrypt = final_shuffle.to_s.reverse 
												until @pb.fraction = 0.8 do 
													@pb.fraction = 0.6 + 0.1
												end
												@p_info.text = "  Encryption complete, writing to #{@encrypt_txt_save_box.text}.txt"
												File.open("#{@encrypt_txt_save_box.text}.txt", "w+") do |encrypt|
													encrypt.write "#{final_encrypt}"
												end
												until @pb.fraction = 1.0 do 
													@pb.fraction = 0.8 + 0.1
												end
												@p_info.text = "  Successfully completed!!!"
												@p_info.stroke = green
												info "Encrypted file saved to #{@encrypt_txt_save_box.text}.txt"
											end
										end
									end
									para "  "
									button "Go Back", stroke: red, tooltip: "Go back to the main app window" do
										close
									end
								end
							end
						end
					end
				end
				para ""
				flow do 
					para "                    	      "
					button "Decrypt", tooltip: "Load decryption options" do visit "/decrypt" end
				end 
			end
		end 
		
		def decryptscreen
			stack do
			para ""
			flow do
				para "          "
				button "Type-in Message", height: 68, width: 240, icon: "assets/images/decrypt-64.png", tooltip: "Manually enter and decrypt text" do
					window :title => "GuptaK - Decrypt - Type-in Message", height: 440 do
						stack do
							para ""
							flow do
								para "  "
								@decrypt_text = edit_box " Enter your encrypted message here!", :height => 300, :width => 570
							end
							@p_info = para "  "
							flow do
								para "  "
								button "Decrypt", stroke: purple, tooltip: "Decrypt content in text-box" do 
									Thread.new do
										@decrypt_error = @decrypt_text.text()
										if @decrypt_text.text() == " Enter your encrypted message here!"
											@p_info.text = "  Error! Try typing something in the above text-box!"
											@p_info.stroke = red
											error "Decrypt - Type-in Message :#{@p_info}"
										elsif @decrypt_text.text() == ""
											@p_info.text = "  Error! text-box should not be blank!"
											@p_info.stroke = red
											error "Decrypt - Type-in Message :#{@p_info}"
										elsif @decrypt_text.text() == " "
											@p_info.text = "  Error! text-box should not be blank!"
											@p_info.stroke = red
											error "Decrypt - Type-in Message :#{@p_info}"
										else
											@decrypt_file_conv = @decrypt_text.text
											@p_info.text = "  Using secret key and unscrambling content, please wait..."
											@p_info.stroke = blue
											@decrypt_file_conv2 = @decrypt_file_conv.reverse 
											@decrypt_file_conv3 =  @decrypt_file_conv2.to_i / @@crypt_final[129].to_i
											@decrypt_file_string = @decrypt_file_conv3.to_s
											@p_info.text = "  Replacing content, please wait..."
											if @decrypt_file_string.include? ""
												@decrypt_file_string.gsub! @@crypt_final[0], "0"
												u = 0
												while u <= 128
													@decrypt_file_string.gsub! @@crypt_final[u], u.chr	
													u = u + 1
												end
											end
											final_decrypt = @decrypt_file_string.to_s
											@decrypt_text.text = "#{final_decrypt}"
											if @decrypt_text.text() == "0"
												@p_info.text = "  Error!"
												@p_info.stroke = red
												error "Decrypt - Type-in Message :#{@p_info}"
											else 
												@p_info.text = "  Successfully completed!!!"
												@p_info.stroke = green
												info "Decrypted content successfully!"
											end
										end
									end
								end
								para "  "
								button "Copy", tooltip: "Copy content in text-box to clipboard" do 
									self.clipboard = "#{@decrypt_text.text}"
									@p_info.text = "  Current content copied to clipboard!"
									@p_info.stroke = blue
								end
								para "  "
								button "Paste", tooltip: "Paste content in clipboard to text-box" do 
									@decrypt_text.text = clipboard()
									@p_info.text = "  Current clipboard content has been pasted!"
									@p_info.stroke = blue
								end
								para "  "
								button "Clear", tooltip: "Clear content from text-box" do 
									@decrypt_text.text = ""
									@p_info.text = "  Current content has been cleared from the text-box!"
									@p_info.stroke = blue
								end 
								para "  "
								button "Go Back", stroke: red, tooltip: "Go back to the main app window"  do
									close
								end
							end
						end 										
					end			
				end
			end
			para ""
			flow do
				para "          "
				button "Select Text File", height: 68, width: 240, icon: "assets/images/decrypt-64.png", tooltip: "Select and decrypt txt files" do
					window :title => "GuptaK - Decrypt - Select Text File", height: 340 do
						stack do
							para ""
							flow do
								para "  "
								@decrypt_txt_box = edit_line "Use button below to select file!", :width => 570
							end
							flow do
								para "  "
								button "Select Source File...", tooltip: "Select a .txt file to decrypt" do
									@decrypt_txt_select = ask_open_file title: "Select .txt File...", types: {"Text File" => "*.txt"}											
									@decrypt_txt_box.text = "#{@decrypt_txt_select}"
								end
							end
							para ""
							flow do
								para "  "
								@decrypt_txt_save_box = edit_line "Use button below to select save location!", :width => 570
							end
							flow do
								para "  "
								button "Select Save Location...", tooltip: "Select save location and file name" do
									@decrypt_txt_save_select = ask_save_file title: "Select Save Location...", types: {"Text File" => "*.txt"}
									@decrypt_txt_save_box.text = "#{@decrypt_txt_save_select}"
									@decrypt_txt_save_select_truncate = @decrypt_txt_save_box.text.chomp(".txt")
									@decrypt_txt_save_box.text = "#{@decrypt_txt_save_select_truncate}"
								end
							end	
							flow do 
								para "  "
								@pb = progress :width => 570
							end 
							@p_info = para "  "
							flow do
								para "  "
								button "Decrypt", stroke: purple, tooltip: "Decrypt content in txt file"  do 
									Thread.new do 
										if @decrypt_txt_save_box.text() == "Use button below to select save location!"
											@p_info.text = "  Error! Try selecting a save location!"
											@p_info.stroke = red
											error "Decrypt - Select Text File :#{@p_info}"
										elsif @decrypt_txt_save_box.text() == ""
											@p_info.text = "  Error! Save location should not be blank!"
											@p_info.stroke = red
											error "Decrypt - Select Text File :#{@p_info}"
										elsif @decrypt_txt_save_box.text() == " "
											@p_info.text = "  Error! Save location should not be blank!"
											@p_info.stroke = red
											error "Decrypt - Select Text File :#{@p_info}"
										else
											until @pb.fraction = 0.2 do 
												@pb.fraction = 0 + 0.1
											end
											@p_info.text = "  Reading #{@decrypt_txt_box.text}..."
											@p_info.stroke = blue
											@decrypt_file_string = File.read("#{@decrypt_txt_box.text}")
											@decrypt_file_conv = @decrypt_file_string
											@decrypt_file_conv2 = @decrypt_file_conv.reverse 
											until @pb.fraction = 0.4 do 
												@pb.fraction = 0.2 + 0.1
											end
											@p_info.text = "  Using secret key and unscrambling content, please wait..."
											@decrypt_file_conv3 =  @decrypt_file_conv2.to_i / @@crypt_final[129].to_i
											@decrypt_file_string = @decrypt_file_conv3.to_s
											until @pb.fraction = 0.6 do 
												@pb.fraction = 0.4 + 0.1
											end
											@p_info.text = "  Replacing content, please wait..."
											if @decrypt_file_string.include? ""
												@decrypt_file_string.gsub! @@crypt_final[0], "0"
												u = 0
												while u <= 128
													@decrypt_file_string.gsub! @@crypt_final[u], u.chr	
													u = u + 1
												end
											end
											final_decrypt = @decrypt_file_string.to_s
											if final_decrypt == "0"
												@p_info.text = "  Error!"
												@p_info.stroke = red
												error "Decrypt - Select Text File :#{@p_info}"
											else 
												until @pb.fraction = 0.8 do 
													@pb.fraction = 0.6 + 0.1
												end
												@p_info.text = "  Decryption complete, writing to #{@decrypt_txt_save_box.text}.txt"
												File.open("#{@decrypt_txt_save_box.text}.txt", "w+") do |decrypt|
													decrypt.write "#{final_decrypt}"
												end
												until @pb.fraction = 1.0 do 
													@pb.fraction = 0.8 + 0.1
												end
												@p_info.text = "  Successfully completed!!!"
												@p_info.stroke = green
												info "Decrypted file saved to #{@decrypt_txt_save_box.text}.txt"
											end	
										end
									end
								end								
									para "  "
									button "Go Back", stroke: red, tooltip: "Go back to the main app window" do
										close
									end
								end
							end
						end
					end
				end 
			end
			para ""
			flow do 
				para "                    	      "
				button "Encrypt", tooltip: "Load encryption options" do visit "/encrypt" end				
			end
		end
	end

	Shoes.app :title => "GuptaK", height: 300, width: 330, menus: true