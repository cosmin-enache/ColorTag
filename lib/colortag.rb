module ColorTag
    def cputs input_string
        TagProcess.cputs input_string
    end
    class TagProcess
        # Clear all ANSI styling sequence
        CLEAR_ANSI = "\u001b[0m"
        # Sequences to be switched in input_string
        ANSI_SEQUENCES = {
		# DECORATIONS
            "<u:": "\u001b[4m",			# UNDERLINE
            "<b:": "\u001b[1m",			# BOLD
            "<r:": "\u001b[7m",			# REVERSE
		# COLORS
            "<fr:": "\u001b[31m",		# RED 
            "<fg:": "\u001b[32m",		# GREEN
            "<fy:": "\u001b[33m",		# YELLOW
            "<fb:": "\u001b[34m"		# BLUE
        }

        def self.cputs input_string
            input_string = process_string input_string
            puts input_string
        end

        private

        def self.process_string input_string
            ANSI_SEQUENCES.each_pair do |cseq, ansi|
                cseq = cseq.to_s # symbol to string conversion
                c_index = input_string.index cseq
                if c_index
                    input_string.slice! cseq
                    input_string.insert c_index, ansi
                    c_last_index = c_index
                    c_index = input_string.index ">"
                    if c_index
                        input_string.slice! ">"
                        input_string.insert c_index, CLEAR_ANSI
                    else
                        raise StandardError.new "

                        TagProcess Escape sequence invalid!
                        (Forgot to close TagProcess sequence?)
                        AFTER INDEX [#{c_last_index}]
                        "
                    end
                end
            end
            return input_string
        end
    end
end
