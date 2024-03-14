package kotlin.jvm.internal;
/* loaded from: classes.dex */
public class FunctionReferenceImpl extends FunctionReference {
    public FunctionReferenceImpl(int i4, Class cls, String str, String str2, int i5) {
        super(i4, CallableReference.NO_RECEIVER, cls, str, str2, i5);
    }

    public FunctionReferenceImpl(int i4, Object obj, Class cls, String str, String str2) {
        super(i4, obj, cls, str, str2, 0);
    }
}
