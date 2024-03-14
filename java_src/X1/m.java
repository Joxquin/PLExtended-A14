package X1;

import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class m implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2048a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f2049b;

    public /* synthetic */ m(int i4, Object obj) {
        this.f2048a = i4;
        this.f2049b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f2048a) {
            case 0:
                u.f((u) this.f2049b, (com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b) obj);
                return;
            default:
                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = (com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b) this.f2049b;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                bVar.f6464v = booleanValue;
                bVar.f6460r.f1208b.f1233g = booleanValue;
                return;
        }
    }
}
