package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import com.springbook.biz.user.UserVO;

@Service
@Aspect
public class AfterReturningAdviceAnnotation {
	@Pointcut("execution(* com.springbook.biz..*Impl.get*(..))")
	public void annotationGetPointcut() {
	}

	@AfterReturning(pointcut = "annotationGetPointcut()", returning = "returnObj")
	public void afterLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName();

		if (returnObj instanceof UserVO) {
			UserVO user = (UserVO) returnObj;
			if (user.getRole().equals("admin")) {
				System.out.println(user.getName() + " 로그인(admin)@");
			}
		}
		System.out.println("[사후처리@] " + method + "() 메소드 리턴값 : " + returnObj.toString());
	}

}
