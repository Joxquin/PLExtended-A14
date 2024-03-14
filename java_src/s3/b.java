package s3;

import java.nio.charset.Charset;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f12286a;

    static {
        Charset forName = Charset.forName("UTF-8");
        h.d(forName, "forName(\"UTF-8\")");
        f12286a = forName;
        h.d(Charset.forName("UTF-16"), "forName(\"UTF-16\")");
        h.d(Charset.forName("UTF-16BE"), "forName(\"UTF-16BE\")");
        h.d(Charset.forName("UTF-16LE"), "forName(\"UTF-16LE\")");
        h.d(Charset.forName("US-ASCII"), "forName(\"US-ASCII\")");
        h.d(Charset.forName("ISO-8859-1"), "forName(\"ISO-8859-1\")");
    }
}
