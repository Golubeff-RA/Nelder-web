#pragma once
#include "algebra.h"
#include "expression_parse.h"

class PostStringTransfer {
private:
    std::vector<std::string> expression_;
    std::vector<std::string> postExpression_;
    std::stack<std::string> stack_;

    void OpenScobActions(std::string str);
    void CloseScobActions(std::string str);
    void OperandActions(std::string str);
    void NumberActions(std::string str);
    void FillPostfixstring();

public:
    // PostStringTransfer(std::vector<std::string> vecExpression) :  expression_(vecExpression){}
    PostStringTransfer(std::string expression);
    std::vector<std::string> GetPostfixString();
};
