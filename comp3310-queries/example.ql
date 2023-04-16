/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */
import java

from MethodAccess call, Method method, Method method2
where
call.getMethod()=method and
method2.hasName("println") and
method2.getDeclaringType().hasQualifiedName("java.io", "PrintStream") and
method.hasName("getMessage") and
method.getDeclaringType().hasQualifiedName("java.lang", "Throwable")


select call, "This is a println call with a getMessage argument"
