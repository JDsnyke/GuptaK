
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
					crypt_var = ['crypt_0', *('crypt_A'..'crypt_Z'), *('crypt_a'..'crypt_z'), 'crypt_space', 'crypt_comma', 'crypt_fullstop', 'crypt_question_mark', 'crypt_exclamation_mark', 'crypt_hash', 'crypt_at', 'crypt_dollar', 'crypt_percent', 'crypt_up_arrow', 'crypt_and', 'crypt_star', 'crypt_standing_line', 'crypt_dash', 'crypt_underscore', 'crypt_plus', 'crypt_equal', 'crypt_sim', 'crypt_forward_slash', 'crypt_colon', 'crypt_semi_colon', 'crypt_single_quote', 'crypt_double_quote', 'crypt_reverse_quote', 'crypt_less_than', 'crypt_greater_than', 'crypt_square_bracket_start', 'crypt_square_bracket_end', 'crypt_curly_bracket_start', 'crypt_curly_bracket_end', 'crypt_bracket_start', 'crypt_bracket_end', 'crypt_tab', 'crypt_key']
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
				readlicense = File.read("LICENSE")
				alert "#{readlicense}", title: "License Information"
			end
			helpmenu << @licenseitem
			@privacypolicyitem =  menuitem "Privacy Policy" do
				# something
			end
			helpmenu << @privacypolicyitem
			updateseperator = menuitem "---"
			helpmenu << updateseperator
			@updateitem =  menuitem "Check for Updates...", key: "control_u" do
			
				download "https://github.com/JDsnyke/GuptaK/raw/master/assets/version/latest.ver", :save => "assets/version/latest.ver"

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
						elsif $?.exitstatus > 0
							alert "Hmmm...\n\nThere seems to be something broken between the terminal and GuptaK.\n\nVisit https://www.github.com/JDsnyke/GuptaK/releases/latest instead!\n\n", title: "Check for Updates - Error"
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
								para ""	
								flow do
									para "  "
									button "Encrypt" do 
										@encrypt_file_string = @encrypt_text.text
										if @encrypt_text.text.include? ""
											@encrypt_file_string.gsub! "0", @@crypt_final[0]
											@encrypt_file_string.gsub! "A", @@crypt_final[1]	
											@encrypt_file_string.gsub! "B", @@crypt_final[2]
											@encrypt_file_string.gsub! "C", @@crypt_final[3]	
											@encrypt_file_string.gsub! "D", @@crypt_final[4]	
											@encrypt_file_string.gsub! "E", @@crypt_final[5]
											@encrypt_file_string.gsub! "F", @@crypt_final[6]
											@encrypt_file_string.gsub! "G", @@crypt_final[7]
											@encrypt_file_string.gsub! "H", @@crypt_final[8]
											@encrypt_file_string.gsub! "I", @@crypt_final[9]
											@encrypt_file_string.gsub! "J", @@crypt_final[10]
											@encrypt_file_string.gsub! "K", @@crypt_final[11]
											@encrypt_file_string.gsub! "L", @@crypt_final[12]
											@encrypt_file_string.gsub! "M", @@crypt_final[13]
											@encrypt_file_string.gsub! "N", @@crypt_final[14]
											@encrypt_file_string.gsub! "O", @@crypt_final[15]
											@encrypt_file_string.gsub! "P", @@crypt_final[16]
											@encrypt_file_string.gsub! "Q", @@crypt_final[17]
											@encrypt_file_string.gsub! "R", @@crypt_final[18]
											@encrypt_file_string.gsub! "S", @@crypt_final[19]
											@encrypt_file_string.gsub! "T", @@crypt_final[20]
											@encrypt_file_string.gsub! "U", @@crypt_final[21]
											@encrypt_file_string.gsub! "V", @@crypt_final[22]
											@encrypt_file_string.gsub! "W", @@crypt_final[23]
											@encrypt_file_string.gsub! "X", @@crypt_final[24]
											@encrypt_file_string.gsub! "Y", @@crypt_final[25]
											@encrypt_file_string.gsub! "Z", @@crypt_final[26]
											@encrypt_file_string.gsub! "a", @@crypt_final[27]
											@encrypt_file_string.gsub! "b", @@crypt_final[28]
											@encrypt_file_string.gsub! "c", @@crypt_final[29]
											@encrypt_file_string.gsub! "d", @@crypt_final[30]
											@encrypt_file_string.gsub! "e", @@crypt_final[31]
											@encrypt_file_string.gsub! "f", @@crypt_final[32]
											@encrypt_file_string.gsub! "g", @@crypt_final[33]
											@encrypt_file_string.gsub! "h", @@crypt_final[34]
											@encrypt_file_string.gsub! "i", @@crypt_final[35]
											@encrypt_file_string.gsub! "j", @@crypt_final[36]
											@encrypt_file_string.gsub! "k", @@crypt_final[37]
											@encrypt_file_string.gsub! "l", @@crypt_final[38]
											@encrypt_file_string.gsub! "m", @@crypt_final[39]
											@encrypt_file_string.gsub! "n", @@crypt_final[40]
											@encrypt_file_string.gsub! "o", @@crypt_final[41]
											@encrypt_file_string.gsub! "p", @@crypt_final[42]
											@encrypt_file_string.gsub! "q", @@crypt_final[43]
											@encrypt_file_string.gsub! "r", @@crypt_final[44]
											@encrypt_file_string.gsub! "s", @@crypt_final[45]
											@encrypt_file_string.gsub! "t", @@crypt_final[46]
											@encrypt_file_string.gsub! "u", @@crypt_final[47]
											@encrypt_file_string.gsub! "v", @@crypt_final[48]
											@encrypt_file_string.gsub! "w", @@crypt_final[49]
											@encrypt_file_string.gsub! "x", @@crypt_final[50]
											@encrypt_file_string.gsub! "y", @@crypt_final[51]
											@encrypt_file_string.gsub! "z", @@crypt_final[52]	
											@encrypt_file_string.gsub! " ", @@crypt_final[53]													
											@encrypt_file_string.gsub! ",", @@crypt_final[54]													
											@encrypt_file_string.gsub! ".", @@crypt_final[55]		
											@encrypt_file_string.gsub! "?", @@crypt_final[56]
											@encrypt_file_string.gsub! "!", @@crypt_final[57]
											@encrypt_file_string.gsub! "#", @@crypt_final[58]
											@encrypt_file_string.gsub! "@", @@crypt_final[59]
											@encrypt_file_string.gsub! "$", @@crypt_final[60]
											@encrypt_file_string.gsub! "^", @@crypt_final[61]
											@encrypt_file_string.gsub! "&", @@crypt_final[62]
											@encrypt_file_string.gsub! "*", @@crypt_final[63]
											@encrypt_file_string.gsub! "|", @@crypt_final[64]
											@encrypt_file_string.gsub! "-", @@crypt_final[65]
											@encrypt_file_string.gsub! "_", @@crypt_final[66]
											@encrypt_file_string.gsub! "+", @@crypt_final[67]
											@encrypt_file_string.gsub! "=", @@crypt_final[68]
											@encrypt_file_string.gsub! "~", @@crypt_final[69]
											@encrypt_file_string.gsub! "/", @@crypt_final[70]
											@encrypt_file_string.gsub! ":", @@crypt_final[71]
											@encrypt_file_string.gsub! ";", @@crypt_final[72]
											@encrypt_file_string.gsub! "'", @@crypt_final[73]
											@encrypt_file_string.gsub! '"', @@crypt_final[74]
											@encrypt_file_string.gsub! '`', @@crypt_final[75]
											@encrypt_file_string.gsub! "<", @@crypt_final[76]
											@encrypt_file_string.gsub! ">", @@crypt_final[77]
											@encrypt_file_string.gsub! "[", @@crypt_final[78]
											@encrypt_file_string.gsub! "]", @@crypt_final[79]
											@encrypt_file_string.gsub! "{", @@crypt_final[80]
											@encrypt_file_string.gsub! "}", @@crypt_final[81]
											@encrypt_file_string.gsub! "(", @@crypt_final[82]
											@encrypt_file_string.gsub! ")", @@crypt_final[83]
											@encrypt_file_string.gsub! "	", @@crypt_final[84]
										end
										final_shuffle =  @encrypt_file_string.to_i * @@crypt_final[85].to_i
										final_encrypt = final_shuffle.to_s.reverse 
										@encrypt_text.text = "#{final_encrypt}"
										alert "Encryption Complete!", title: "Process Alert"
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
									@encrypt_txt_box = edit_line "", :width => 570
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
									@encrypt_txt_save_box = edit_line "", :width => 570
								end
								flow do
									para "  "
									button "Select Save Location..." do
										@encrypt_txt_save_select = ask_save_file title: "Select Save Location...", types: {"Text File" => "*.txt"}
										@encrypt_txt_save_box.text = "#{@encrypt_txt_save_select}"
									end
								end	
								para "\n"
								flow do
									para "  "
									button "Encrypt" do
										@encrypt_file_string = File.read("#{@encrypt_txt_select}")
										if @encrypt_file_string.include? ""
											@encrypt_file_string.gsub! "0", @@crypt_final[0]
											@encrypt_file_string.gsub! "A", @@crypt_final[1]	
											@encrypt_file_string.gsub! "B", @@crypt_final[2]
											@encrypt_file_string.gsub! "C", @@crypt_final[3]	
											@encrypt_file_string.gsub! "D", @@crypt_final[4]	
											@encrypt_file_string.gsub! "E", @@crypt_final[5]
											@encrypt_file_string.gsub! "F", @@crypt_final[6]
											@encrypt_file_string.gsub! "G", @@crypt_final[7]
											@encrypt_file_string.gsub! "H", @@crypt_final[8]
											@encrypt_file_string.gsub! "I", @@crypt_final[9]
											@encrypt_file_string.gsub! "J", @@crypt_final[10]
											@encrypt_file_string.gsub! "K", @@crypt_final[11]
											@encrypt_file_string.gsub! "L", @@crypt_final[12]
											@encrypt_file_string.gsub! "M", @@crypt_final[13]
											@encrypt_file_string.gsub! "N", @@crypt_final[14]
											@encrypt_file_string.gsub! "O", @@crypt_final[15]
											@encrypt_file_string.gsub! "P", @@crypt_final[16]
											@encrypt_file_string.gsub! "Q", @@crypt_final[17]
											@encrypt_file_string.gsub! "R", @@crypt_final[18]
											@encrypt_file_string.gsub! "S", @@crypt_final[19]
											@encrypt_file_string.gsub! "T", @@crypt_final[20]
											@encrypt_file_string.gsub! "U", @@crypt_final[21]
											@encrypt_file_string.gsub! "V", @@crypt_final[22]
											@encrypt_file_string.gsub! "W", @@crypt_final[23]
											@encrypt_file_string.gsub! "X", @@crypt_final[24]
											@encrypt_file_string.gsub! "Y", @@crypt_final[25]
											@encrypt_file_string.gsub! "Z", @@crypt_final[26]
											@encrypt_file_string.gsub! "a", @@crypt_final[27]
											@encrypt_file_string.gsub! "b", @@crypt_final[28]
											@encrypt_file_string.gsub! "c", @@crypt_final[29]
											@encrypt_file_string.gsub! "d", @@crypt_final[30]
											@encrypt_file_string.gsub! "e", @@crypt_final[31]
											@encrypt_file_string.gsub! "f", @@crypt_final[32]
											@encrypt_file_string.gsub! "g", @@crypt_final[33]
											@encrypt_file_string.gsub! "h", @@crypt_final[34]
											@encrypt_file_string.gsub! "i", @@crypt_final[35]
											@encrypt_file_string.gsub! "j", @@crypt_final[36]
											@encrypt_file_string.gsub! "k", @@crypt_final[37]
											@encrypt_file_string.gsub! "l", @@crypt_final[38]
											@encrypt_file_string.gsub! "m", @@crypt_final[39]
											@encrypt_file_string.gsub! "n", @@crypt_final[40]
											@encrypt_file_string.gsub! "o", @@crypt_final[41]
											@encrypt_file_string.gsub! "p", @@crypt_final[42]
											@encrypt_file_string.gsub! "q", @@crypt_final[43]
											@encrypt_file_string.gsub! "r", @@crypt_final[44]
											@encrypt_file_string.gsub! "s", @@crypt_final[45]
											@encrypt_file_string.gsub! "t", @@crypt_final[46]
											@encrypt_file_string.gsub! "u", @@crypt_final[47]
											@encrypt_file_string.gsub! "v", @@crypt_final[48]
											@encrypt_file_string.gsub! "w", @@crypt_final[49]
											@encrypt_file_string.gsub! "x", @@crypt_final[50]
											@encrypt_file_string.gsub! "y", @@crypt_final[51]
											@encrypt_file_string.gsub! "z", @@crypt_final[52]	
											@encrypt_file_string.gsub! " ", @@crypt_final[53]													
											@encrypt_file_string.gsub! ",", @@crypt_final[54]													
											@encrypt_file_string.gsub! ".", @@crypt_final[55]		
											@encrypt_file_string.gsub! "?", @@crypt_final[56]
											@encrypt_file_string.gsub! "!", @@crypt_final[57]
											@encrypt_file_string.gsub! "#", @@crypt_final[58]
											@encrypt_file_string.gsub! "@", @@crypt_final[59]
											@encrypt_file_string.gsub! "$", @@crypt_final[60]
											@encrypt_file_string.gsub! "^", @@crypt_final[61]
											@encrypt_file_string.gsub! "&", @@crypt_final[62]
											@encrypt_file_string.gsub! "*", @@crypt_final[63]
											@encrypt_file_string.gsub! "|", @@crypt_final[64]
											@encrypt_file_string.gsub! "-", @@crypt_final[65]
											@encrypt_file_string.gsub! "_", @@crypt_final[66]
											@encrypt_file_string.gsub! "+", @@crypt_final[67]
											@encrypt_file_string.gsub! "=", @@crypt_final[68]
											@encrypt_file_string.gsub! "~", @@crypt_final[69]
											@encrypt_file_string.gsub! "/", @@crypt_final[70]
											@encrypt_file_string.gsub! ":", @@crypt_final[71]
											@encrypt_file_string.gsub! ";", @@crypt_final[72]
											@encrypt_file_string.gsub! "'", @@crypt_final[73]
											@encrypt_file_string.gsub! '"', @@crypt_final[74]
											@encrypt_file_string.gsub! '`', @@crypt_final[75]
											@encrypt_file_string.gsub! "<", @@crypt_final[76]
											@encrypt_file_string.gsub! ">", @@crypt_final[77]
											@encrypt_file_string.gsub! "[", @@crypt_final[78]
											@encrypt_file_string.gsub! "]", @@crypt_final[79]
											@encrypt_file_string.gsub! "{", @@crypt_final[80]
											@encrypt_file_string.gsub! "}", @@crypt_final[81]
											@encrypt_file_string.gsub! "(", @@crypt_final[82]
											@encrypt_file_string.gsub! ")", @@crypt_final[83]
											@encrypt_file_string.gsub! "	", @@crypt_final[84]
										end
										final_shuffle =  @encrypt_file_string.to_i * @@crypt_final[85].to_i
										final_encrypt = final_shuffle.to_s.reverse 
										File.open("#{@encrypt_txt_save_select}.txt", "a") do |encrypt|
											encrypt.write "#{final_encrypt}"
										end
										alert "Encryption Complete!", title: "Process Alert"    
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
							para ""	
							flow do
								para "  "
								button "Decrypt" do 
									@decrypt_file_conv = @decrypt_text.text
									@decrypt_file_conv2 = @decrypt_file_conv.reverse 
									@decrypt_file_conv3 =  @decrypt_file_conv2.to_i / @@crypt_final[85].to_i
									@decrypt_file_string = @decrypt_file_conv3.to_s
									if @decrypt_file_string.include? ""
										@decrypt_file_string.gsub! @@crypt_final[0], "0"
										@decrypt_file_string.gsub! @@crypt_final[1], "A"	
										@decrypt_file_string.gsub! @@crypt_final[2], "B"
										@decrypt_file_string.gsub! @@crypt_final[3], "C"	
										@decrypt_file_string.gsub! @@crypt_final[4], "D"	
										@decrypt_file_string.gsub! @@crypt_final[5], "E"
										@decrypt_file_string.gsub! @@crypt_final[6], "F"
										@decrypt_file_string.gsub! @@crypt_final[7], "G"
										@decrypt_file_string.gsub! @@crypt_final[8], "H"
										@decrypt_file_string.gsub! @@crypt_final[9], "I"
										@decrypt_file_string.gsub! @@crypt_final[10], "J"
										@decrypt_file_string.gsub! @@crypt_final[11], "K"
										@decrypt_file_string.gsub! @@crypt_final[12], "L"
										@decrypt_file_string.gsub! @@crypt_final[13], "M"
										@decrypt_file_string.gsub! @@crypt_final[14], "N"
										@decrypt_file_string.gsub! @@crypt_final[15], "O"
										@decrypt_file_string.gsub! @@crypt_final[16], "P"
										@decrypt_file_string.gsub! @@crypt_final[17], "Q"
										@decrypt_file_string.gsub! @@crypt_final[18], "R"
										@decrypt_file_string.gsub! @@crypt_final[19], "S"
										@decrypt_file_string.gsub! @@crypt_final[20], "T"
										@decrypt_file_string.gsub! @@crypt_final[21], "U"
										@decrypt_file_string.gsub! @@crypt_final[22], "V"
										@decrypt_file_string.gsub! @@crypt_final[23], "W"
										@decrypt_file_string.gsub! @@crypt_final[24], "X"
										@decrypt_file_string.gsub! @@crypt_final[25], "Y"
										@decrypt_file_string.gsub! @@crypt_final[26], "Z"
										@decrypt_file_string.gsub! @@crypt_final[27], "a"
										@decrypt_file_string.gsub! @@crypt_final[28], "b"
										@decrypt_file_string.gsub! @@crypt_final[29], "c"
										@decrypt_file_string.gsub! @@crypt_final[30], "d"
										@decrypt_file_string.gsub! @@crypt_final[31], "e"
										@decrypt_file_string.gsub! @@crypt_final[32], "f"
										@decrypt_file_string.gsub! @@crypt_final[33], "g"
										@decrypt_file_string.gsub! @@crypt_final[34], "h"
										@decrypt_file_string.gsub! @@crypt_final[35], "i"
										@decrypt_file_string.gsub! @@crypt_final[36], "j"
										@decrypt_file_string.gsub! @@crypt_final[37], "k"
										@decrypt_file_string.gsub! @@crypt_final[38], "l"
										@decrypt_file_string.gsub! @@crypt_final[39], "m"
										@decrypt_file_string.gsub! @@crypt_final[40], "n"
										@decrypt_file_string.gsub! @@crypt_final[41], "o"
										@decrypt_file_string.gsub! @@crypt_final[42], "p"
										@decrypt_file_string.gsub! @@crypt_final[43], "q"
										@decrypt_file_string.gsub! @@crypt_final[44], "r"
										@decrypt_file_string.gsub! @@crypt_final[45], "s"
										@decrypt_file_string.gsub! @@crypt_final[46], "t"
										@decrypt_file_string.gsub! @@crypt_final[47], "u"
										@decrypt_file_string.gsub! @@crypt_final[48], "v"
										@decrypt_file_string.gsub! @@crypt_final[49], "w"
										@decrypt_file_string.gsub! @@crypt_final[50], "x"
										@decrypt_file_string.gsub! @@crypt_final[51], "y"
										@decrypt_file_string.gsub! @@crypt_final[52], "z"
										@decrypt_file_string.gsub! @@crypt_final[53], " "													
										@decrypt_file_string.gsub! @@crypt_final[54], ","													
										@decrypt_file_string.gsub! @@crypt_final[55], "."		
										@decrypt_file_string.gsub! @@crypt_final[56], "?"
										@decrypt_file_string.gsub! @@crypt_final[57], "!"
										@decrypt_file_string.gsub! @@crypt_final[58], "#"
										@decrypt_file_string.gsub! @@crypt_final[59], "@"
										@decrypt_file_string.gsub! @@crypt_final[60], "$"
										@decrypt_file_string.gsub! @@crypt_final[61], "^"
										@decrypt_file_string.gsub! @@crypt_final[62], "&"
										@decrypt_file_string.gsub! @@crypt_final[63], "*"
										@decrypt_file_string.gsub! @@crypt_final[64], "|"
										@decrypt_file_string.gsub! @@crypt_final[65], "-"
										@decrypt_file_string.gsub! @@crypt_final[66], "_"
										@decrypt_file_string.gsub! @@crypt_final[67], "+"
										@decrypt_file_string.gsub! @@crypt_final[68], "="
										@decrypt_file_string.gsub! @@crypt_final[69], "~"
										@decrypt_file_string.gsub! @@crypt_final[70], "/"
										@decrypt_file_string.gsub! @@crypt_final[71], ":"
										@decrypt_file_string.gsub! @@crypt_final[72], ";"
										@decrypt_file_string.gsub! @@crypt_final[73], "'"
										@decrypt_file_string.gsub! @@crypt_final[74], '"'
										@decrypt_file_string.gsub! @@crypt_final[75], '`'
										@decrypt_file_string.gsub! @@crypt_final[76], "<"
										@decrypt_file_string.gsub! @@crypt_final[77], ">"
										@decrypt_file_string.gsub! @@crypt_final[78], "["
										@decrypt_file_string.gsub! @@crypt_final[79], "]"
										@decrypt_file_string.gsub! @@crypt_final[80], "{"
										@decrypt_file_string.gsub! @@crypt_final[81], "}"
										@decrypt_file_string.gsub! @@crypt_final[82], "("
										@decrypt_file_string.gsub! @@crypt_final[83], ")"
										@decrypt_file_string.gsub! @@crypt_final[84], "	"
									end
									final_decrypt = @decrypt_file_string.to_s
									@decrypt_text.text = "#{final_decrypt}"
									alert "Decryption Complete!", title: "Process Alert"
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
								@decrypt_txt_box = edit_line "", :width => 570
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
								@decrypt_txt_save_box = edit_line "", :width => 570
							end
							flow do
								para "  "
								button "Select Save Location..." do
									@decrypt_txt_save_select = ask_save_file title: "Select Save Location...", types: {"Text File" => "*.txt"}
									@decrypt_txt_save_box.text = "#{@decrypt_txt_save_select}"
								end
							end	
							para "\n"
							flow do
								para "  "
								button "Decrypt" do
									@decrypt_file_conv = File.read("#{@decrypt_txt_select}")
									@decrypt_file_conv2 = @decrypt_file_conv.reverse 
									@decrypt_file_conv3 =  @decrypt_file_conv2.to_i / @@crypt_final[85].to_i
									@decrypt_file_string = @decrypt_file_conv3.to_s
									if @decrypt_file_string.include? ""
										@decrypt_file_string.gsub! @@crypt_final[0], "0"
										@decrypt_file_string.gsub! @@crypt_final[1], "A"	
										@decrypt_file_string.gsub! @@crypt_final[2], "B"
										@decrypt_file_string.gsub! @@crypt_final[3], "C"	
										@decrypt_file_string.gsub! @@crypt_final[4], "D"	
										@decrypt_file_string.gsub! @@crypt_final[5], "E"
										@decrypt_file_string.gsub! @@crypt_final[6], "F"
										@decrypt_file_string.gsub! @@crypt_final[7], "G"
										@decrypt_file_string.gsub! @@crypt_final[8], "H"
										@decrypt_file_string.gsub! @@crypt_final[9], "I"
										@decrypt_file_string.gsub! @@crypt_final[10], "J"
										@decrypt_file_string.gsub! @@crypt_final[11], "K"
										@decrypt_file_string.gsub! @@crypt_final[12], "L"
										@decrypt_file_string.gsub! @@crypt_final[13], "M"
										@decrypt_file_string.gsub! @@crypt_final[14], "N"
										@decrypt_file_string.gsub! @@crypt_final[15], "O"
										@decrypt_file_string.gsub! @@crypt_final[16], "P"
										@decrypt_file_string.gsub! @@crypt_final[17], "Q"
										@decrypt_file_string.gsub! @@crypt_final[18], "R"
										@decrypt_file_string.gsub! @@crypt_final[19], "S"
										@decrypt_file_string.gsub! @@crypt_final[20], "T"
										@decrypt_file_string.gsub! @@crypt_final[21], "U"
										@decrypt_file_string.gsub! @@crypt_final[22], "V"
										@decrypt_file_string.gsub! @@crypt_final[23], "W"
										@decrypt_file_string.gsub! @@crypt_final[24], "X"
										@decrypt_file_string.gsub! @@crypt_final[25], "Y"
										@decrypt_file_string.gsub! @@crypt_final[26], "Z"
										@decrypt_file_string.gsub! @@crypt_final[27], "a"
										@decrypt_file_string.gsub! @@crypt_final[28], "b"
										@decrypt_file_string.gsub! @@crypt_final[29], "c"
										@decrypt_file_string.gsub! @@crypt_final[30], "d"
										@decrypt_file_string.gsub! @@crypt_final[31], "e"
										@decrypt_file_string.gsub! @@crypt_final[32], "f"
										@decrypt_file_string.gsub! @@crypt_final[33], "g"
										@decrypt_file_string.gsub! @@crypt_final[34], "h"
										@decrypt_file_string.gsub! @@crypt_final[35], "i"
										@decrypt_file_string.gsub! @@crypt_final[36], "j"
										@decrypt_file_string.gsub! @@crypt_final[37], "k"
										@decrypt_file_string.gsub! @@crypt_final[38], "l"
										@decrypt_file_string.gsub! @@crypt_final[39], "m"
										@decrypt_file_string.gsub! @@crypt_final[40], "n"
										@decrypt_file_string.gsub! @@crypt_final[41], "o"
										@decrypt_file_string.gsub! @@crypt_final[42], "p"
										@decrypt_file_string.gsub! @@crypt_final[43], "q"
										@decrypt_file_string.gsub! @@crypt_final[44], "r"
										@decrypt_file_string.gsub! @@crypt_final[45], "s"
										@decrypt_file_string.gsub! @@crypt_final[46], "t"
										@decrypt_file_string.gsub! @@crypt_final[47], "u"
										@decrypt_file_string.gsub! @@crypt_final[48], "v"
										@decrypt_file_string.gsub! @@crypt_final[49], "w"
										@decrypt_file_string.gsub! @@crypt_final[50], "x"
										@decrypt_file_string.gsub! @@crypt_final[51], "y"
										@decrypt_file_string.gsub! @@crypt_final[52], "z"
										@decrypt_file_string.gsub! @@crypt_final[53], " "													
										@decrypt_file_string.gsub! @@crypt_final[54], ","													
										@decrypt_file_string.gsub! @@crypt_final[55], "."		
										@decrypt_file_string.gsub! @@crypt_final[56], "?"
										@decrypt_file_string.gsub! @@crypt_final[57], "!"
										@decrypt_file_string.gsub! @@crypt_final[58], "#"
										@decrypt_file_string.gsub! @@crypt_final[59], "@"
										@decrypt_file_string.gsub! @@crypt_final[60], "$"
										@decrypt_file_string.gsub! @@crypt_final[61], "^"
										@decrypt_file_string.gsub! @@crypt_final[62], "&"
										@decrypt_file_string.gsub! @@crypt_final[63], "*"
										@decrypt_file_string.gsub! @@crypt_final[64], "|"
										@decrypt_file_string.gsub! @@crypt_final[65], "-"
										@decrypt_file_string.gsub! @@crypt_final[66], "_"
										@decrypt_file_string.gsub! @@crypt_final[67], "+"
										@decrypt_file_string.gsub! @@crypt_final[68], "="
										@decrypt_file_string.gsub! @@crypt_final[69], "~"
										@decrypt_file_string.gsub! @@crypt_final[70], "/"
										@decrypt_file_string.gsub! @@crypt_final[71], ":"
										@decrypt_file_string.gsub! @@crypt_final[72], ";"
										@decrypt_file_string.gsub! @@crypt_final[73], "'"
										@decrypt_file_string.gsub! @@crypt_final[74], '"'
										@decrypt_file_string.gsub! @@crypt_final[75], '`'
										@decrypt_file_string.gsub! @@crypt_final[76], "<"
										@decrypt_file_string.gsub! @@crypt_final[77], ">"
										@decrypt_file_string.gsub! @@crypt_final[78], "["
										@decrypt_file_string.gsub! @@crypt_final[79], "]"
										@decrypt_file_string.gsub! @@crypt_final[80], "{"
										@decrypt_file_string.gsub! @@crypt_final[81], "}"
										@decrypt_file_string.gsub! @@crypt_final[82], "("
										@decrypt_file_string.gsub! @@crypt_final[83], ")"
										@decrypt_file_string.gsub! @@crypt_final[84], "	"
									end
									final_decrypt = @decrypt_file_string.to_s
									File.open("#{@decrypt_txt_save_select}.txt", "a") do |decrypt|
										decrypt.write "#{final_decrypt}"
									end
									alert "Decryption Complete!", title: "Process Alert"
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
		end
	end

	Shoes.app :title => "GuptaK", height: 260, width: 330, menus: true