package W1;

import android.content.Context;
import android.net.Uri;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1892a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f1893b;

    public /* synthetic */ f(AssistStateManagerGoogle assistStateManagerGoogle, Context context) {
        this.f1892a = assistStateManagerGoogle;
        this.f1893b = context;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        AssistStateManagerGoogle assistStateManagerGoogle = this.f1892a;
        Context context = this.f1893b;
        Uri uri = AssistStateManagerGoogle.f7507q;
        assistStateManagerGoogle.getClass();
        assistStateManagerGoogle.a(context, (Exception) ((Throwable) obj));
        return null;
    }
}
