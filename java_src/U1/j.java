package U1;

import android.content.Intent;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class j implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ k f1753a;

    public j(k kVar) {
        this.f1753a = kVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Intent intent = (Intent) obj;
        k.a(this.f1753a);
    }
}
