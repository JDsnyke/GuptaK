
#!/usr/bin/env ruby  

	class GuptaK < Shoes
		url "/", :mainscreen
		url "/encrypt", :encryptscreen
		url "/decrypt", :decryptscreen
	
		def mainscreen
		
			# App Menu
		
		    mb = menubar
			helpmenu = menu "Help"
			@cypheritem = menuitem "Reset Keys", key: "control_shift_r" do
				if confirm "This will replace your current cypher keys and makes all currently encrypted files unusable!\n\nProceed?\n", title: "Reroll Keys"
					crypt_var = Array.new(130,"1")
					@crypt_int = crypt_var.map{"#{rand(1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111..9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)}"}
					File.open("assets/keys/crypt.gkey", "w+") do |reset|
						reset.write "module Crypt\n\n"
						reset.write "@@cypher_bak = #{@crypt_int}\n\n"
						reset.write "end\n"
					end
					@@crypt_final = @crypt_int
					alert "Cypher keys have been reset.\n\nRemember to keep a backup copy!", title: "Reset Keys"
				end
			end
			helpmenu << @cypheritem
			@backupcypheritem = menuitem "Backup Keys", key: "control_shift_b" do
				if confirm "Are you sure you wish to proceed? This will,\n\n    * asasa\n\n    * asasasa\n\n    * asasas\n\n", title: "Backup Keys"
					@cypher_backup = ask_save_file title: "Select Backup Location..."
					require 'fileutils'
					FileUtils.cp("assets/keys/crypt.gkey", "#{@cypher_backup}")
					alert "Keys have been backed up to '#{@cypher_backup}'!", title: "Backup Keys"
				end
			end
			helpmenu << @backupcypheritem
			@restorecypheritem = menuitem "Restore Keys", key: "control_shift_l" do
				if confirm "Are you sure you wish to proceed? This will replace any and all local keys!\n\n", title: "Restore Keys"
					@cypher_restore = ask_open_file title: "Select Restore File...", types: {"GuptaK Key File" => "*.gkey", "All" => "*"}
					require 'fileutils'
					FileUtils.cp("#{@cypher_restore}", "assets/temp/crypt.rb")
					require "assets/temp/crypt"
					@@crypt_final = Crypt.class_variable_get(:@@cypher_bak)
					File.open("assets/temp/crypt.rb", "w") {|clear_temp_crypt| clear_temp_crypt.truncate(0)}
					FileUtils.cp("#{@cypher_restore}", "assets/keys/crypt.gkey")
					alert "Keys have been restored using '#{@cypher_restore}'!", title: "Restore Keys"
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
			@updateitem =  menuitem "Check for Updates...", key: "control_u" do
			
				Thread.new do 
					download "https://github.com/JDsnyke/GuptaK/raw/master/assets/version/latest.ver", :save => "assets/version/latest.ver"
				end

				latest_ver = File.read("assets/version/latest.ver")
				current_ver = File.read("assets/version/current.ver")

				require 'fileutils'
				
				if FileUtils.compare_file("assets/version/latest.ver", "assets/version/current.ver") == true
					alert "Congrats! You are running the latest version of GuptaK.", title: "Check for Updates"
				else
					if confirm "This app is outdated! \n\nVisit the repo for the latest version?\n\n", title: "Check for Updates"
						updatelink = "https://www.github.com/JDsnyke/GuptaK/releases/latest"
						if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
							system "start #{updatelink}"
						elsif RbConfig::CONFIG['host_os'] =~ /darwin/
							system "open #{updatelink}"
						elsif RbConfig::CONFIG['host_os'] =~ /linux|bsd/
							system "xdg-open #{updatelink}"
						end 
					end
				end
			end
			helpmenu << @updateitem
			@repoitem = menuitem "Visit Repo" do
				repolink = "https://www.github.com/JDsnyke/GuptaK"
				if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
					system "start #{repolink}"
				elsif RbConfig::CONFIG['host_os'] =~ /darwin/
					system "open #{repolink}"
				elsif RbConfig::CONFIG['host_os'] =~ /linux|bsd/
					system "xdg-open #{repolink}"
				end
			end
			helpmenu << @repoitem
			aboutseperator = menuitem "---"
			helpmenu << aboutseperator
			@aboutitem =  menuitem "About", key: "control_i" do
				current_ver = File.read("assets/version/current.ver")
				alert "Version : #{current_ver}\n\nRuby Version : #{RUBY_VERSION}\n\nShoes Version : #{Shoes::VERSION_NUMBER}", title: "About"
			end
			helpmenu << @aboutitem
			mb << helpmenu
			
			# Set @@crypt_final constant at launch
	
			require 'fileutils'
			FileUtils.cp("assets/keys/crypt.gkey", "assets/temp/crypt.rb")
			require "assets/temp/crypt"
			@@crypt_final = Crypt.class_variable_get(:@@cypher_bak)
			File.open("assets/temp/crypt.rb", "w") {|clear_temp_crypt| clear_temp_crypt.truncate(0)}	
			
			# Body
			
			stack do
				para ""
				flow do
					para "                    "
					button "Encrypt", height: 71, width: 160, icon: "assets/images/encrypt-64.png" do visit "/encrypt" end	
				end
				para ""
				flow do
					para "                    "
					button "Decrypt", height: 71, width: 160, icon: "assets/images/decrypt-64.png" do visit "/decrypt" end				
				end
			end

		end
		
		def encryptscreen
		
			stack do
				para ""
				flow do
					para "                    "
					button "Type-in Message", height: 71, width: 170 do
						window :title => "GuptaK - Encrypt - Type-in Message", height: 440 do
							stack do
								para ""
								flow do
									para "  "
									@encrypt_text = edit_box " Enter your super secret message here!", :height => 300, :width => 570
								end
								@p_info = para "  ", :stroke => green
								flow do
									para "  "
									button "Encrypt" do 
										Thread.new do
											@encrypt_file_string = @encrypt_text.text
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
											if @encrypt_text.text.include? ""
												encrypt_file_string = newstring
											end
											@p_info.text = "  Using secret key and scrambling content, please wait..."
											final_shuffle =  newstring.to_i * @@crypt_final[129].to_i
											final_encrypt = final_shuffle.to_s.reverse 
											@encrypt_text.text = "#{final_encrypt}"
											@p_info.text = "  Successfully completed!!!"						
										end
									end
									para "  "
									button "Go Back" do
										close
									end
								end
							end 										
						end			
					end
				end
				para ""
				flow do
					para "                    "
					button "Select Text File", height: 71, width: 170 do
						window :title => "GuptaK - Encrypt - Select Text File", height: 340 do
							stack do
								para ""
								flow do
									para "  "
									@encrypt_txt_box = edit_line "Use button below to select file!", :width => 570
								end
								flow do
									para "  "
									button "Select Source File..." do
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
									button "Select Save Location..." do
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
								@p_info = para "  ", :stroke => green
								flow do
									para "  "
									button "Encrypt" do
										Thread.new do
												until @pb.fraction = 0.2 do 
													@pb.fraction = 0 + 0.1
												end			
												@p_info.text = "  Reading #{@encrypt_txt_select}"
												@encrypt_file_string = File.read("#{@encrypt_txt_select}")
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
												@p_info.text = "  Encryption complete, writing to #{@encrypt_txt_save_select_truncate}.txt"
												File.open("#{@encrypt_txt_save_select_truncate}.txt", "a") do |encrypt|
													encrypt.write "#{final_encrypt}"
												end
												until @pb.fraction = 1.0 do 
													@pb.fraction = 0.8 + 0.1
												end
												@p_info.text = "  Successfully completed!!!"
										end
									end
									para "  "
									button "Go Back" do
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
					button "Decrypt" do visit "/decrypt" end				
				end 
			end
		end 
		
		def decryptscreen
			stack do
			para ""
			flow do
				para "                    "
				button "Type-in Message", height: 71, width: 170 do
					window :title => "GuptaK - Decrypt - Type-in Message", height: 440 do
						stack do
							para ""
							flow do
								para "  "
								@decrypt_text = edit_box " Enter your encrypted message here!", :height => 300, :width => 570
							end
							@p_info = para "  ", :stroke => green
							flow do
								para "  "
								button "Decrypt" do 
									Thread.new do 
										@decrypt_file_conv = @decrypt_text.text
										@p_info.text = "  Using secret key and unscrambling content, please wait..."
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
										@p_info.text = "  Successfully completed!!!"
									end
								end
								para "  "
								button "Go Back" do
									close
								end
							end
						end 										
					end			
				end
			end
			para ""
			flow do
				para "                    "
				button "Select Text File", height: 71, width: 170 do
					window :title => "GuptaK - Decrypt - Select Text File", height: 340 do
						stack do
							para ""
							flow do
								para "  "
								@decrypt_txt_box = edit_line "Use button below to select file!", :width => 570
							end
							flow do
								para "  "
								button "Select Source File..." do
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
								button "Select Save Location..." do
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
							@p_info = para "  ", :stroke => green
							flow do
								para "  "
								button "Decrypt" do 
									Thread.new do 
										until @pb.fraction = 0.2 do 
											@pb.fraction = 0 + 0.1
										end
										@p_info.text = "  Reading #{@decrypt_txt_select}"
										@decrypt_file_string = File.read("#{@decrypt_txt_select}")
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
										until @pb.fraction = 0.8 do 
											@pb.fraction = 0.6 + 0.1
										end
										@p_info.text = "  Decryption complete, writing to #{@encrypt_txt_save_select_truncate}.txt"
										File.open("#{@decrypt_txt_save_select}.txt", "a") do |decrypt|
											decrypt.write "#{final_decrypt}"
										end
										until @pb.fraction = 1.0 do 
											@pb.fraction = 0.8 + 0.1
										end
										@p_info.text = "  Successfully completed!!!"		
									end
								end								
									para "  "
									button "Go Back" do
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
				button "Encrypt" do visit "/encrypt" end				
			end 
		end
	end

	Shoes.app :title => "GuptaK", height: 300, width: 330, menus: true