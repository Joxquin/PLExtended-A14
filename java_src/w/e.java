package W;

import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.T;
import androidx.lifecycle.U;
import java.io.PrintWriter;
import q.n;
/* loaded from: classes.dex */
public final class e extends a {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0251q f1870a;

    /* renamed from: b  reason: collision with root package name */
    public final d f1871b;

    public e(InterfaceC0251q interfaceC0251q, U u4) {
        this.f1870a = interfaceC0251q;
        this.f1871b = (d) new T(u4, d.f1868e).a(d.class);
    }

    @Deprecated
    public final void b(String str, PrintWriter printWriter) {
        n nVar = this.f1871b.f1869d;
        if (nVar.f11970f > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (nVar.f11970f <= 0) {
                return;
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(nVar.f11968d[0]);
            printWriter.print(": ");
            ((b) nVar.f11969e[0]).toString();
            throw null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        InterfaceC0251q interfaceC0251q = this.f1870a;
        sb.append(interfaceC0251q.getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(interfaceC0251q)));
        sb.append("}}");
        return sb.toString();
    }
}
