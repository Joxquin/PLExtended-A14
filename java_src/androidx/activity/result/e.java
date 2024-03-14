package androidx.activity.result;

import c.AbstractC0318b;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2458a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f2459b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC0318b f2460c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f2461d;

    public /* synthetic */ e(h hVar, String str, AbstractC0318b abstractC0318b, int i4) {
        this.f2458a = i4;
        this.f2461d = hVar;
        this.f2459b = str;
        this.f2460c = abstractC0318b;
    }

    public final void a(Object obj) {
        int i4 = this.f2458a;
        AbstractC0318b abstractC0318b = this.f2460c;
        String str = this.f2459b;
        h hVar = this.f2461d;
        switch (i4) {
            case 0:
                Integer num = (Integer) ((HashMap) hVar.f2468c).get(str);
                if (num != null) {
                    hVar.f2470e.add(str);
                    try {
                        hVar.b(num.intValue(), abstractC0318b, obj);
                        return;
                    } catch (Exception e4) {
                        hVar.f2470e.remove(str);
                        throw e4;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0318b + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            default:
                Integer num2 = (Integer) ((HashMap) hVar.f2468c).get(str);
                if (num2 != null) {
                    hVar.f2470e.add(str);
                    try {
                        hVar.b(num2.intValue(), abstractC0318b, obj);
                        return;
                    } catch (Exception e5) {
                        hVar.f2470e.remove(str);
                        throw e5;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0318b + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
    }

    public final void b() {
        int i4 = this.f2458a;
        String str = this.f2459b;
        h hVar = this.f2461d;
        switch (i4) {
            case 0:
                hVar.f(str);
                return;
            default:
                hVar.f(str);
                return;
        }
    }
}
