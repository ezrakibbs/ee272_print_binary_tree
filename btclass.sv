// A class for the binary tree homework problem.
//

class btclass;
  btclass lpt;
  btclass gpt;
  real value;

  function automatic void add(input btclass nn);
  begin
    if(nn.value < value) begin
      if(lpt) lpt.add(nn); 
      else lpt=nn;
    end 
    else begin
      if(gpt) gpt.add(nn); 
      else gpt=nn;
    end
    return;
  end
  endfunction

  function automatic void printascending;
  begin
  //---------------------------------------------------
  //     Add code here to print the numbers in assending order
  //---------------------------------------------------
    if(lpt) begin
      lpt.printascending();
      $display(value);
    end
    else begin
      $display(value);
    end
  end
  endfunction

  function automatic void printdescending;
  begin
  //----------------------------------------------------
  //    Add code here to print the numbers in descending order
  //----------------------------------------------------
    if(gpt) begin
      gpt.printdescending();
      $display(value);
    end
    else begin
      $display(value);
    end
  end
  endfunction


  function new(input real vl);
  begin
    value=vl;
    lpt=null;
    gpt=null;
  end
  endfunction


endclass

