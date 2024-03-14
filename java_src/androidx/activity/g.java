package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import androidx.fragment.app.C0198e0;
import c.C0317a;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2427d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f2428e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ h f2429f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f2430g;

    public /* synthetic */ g(h hVar, int i4, Object obj, int i5) {
        this.f2427d = i5;
        this.f2429f = hVar;
        this.f2428e = i4;
        this.f2430g = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        androidx.activity.result.c cVar;
        switch (this.f2427d) {
            case 0:
                h hVar = this.f2429f;
                int i4 = this.f2428e;
                Object obj = ((C0317a) this.f2430g).f4252a;
                String str = (String) ((HashMap) hVar.f2467b).get(Integer.valueOf(i4));
                if (str == null) {
                    return;
                }
                androidx.activity.result.f fVar = (androidx.activity.result.f) ((HashMap) hVar.f2471f).get(str);
                if (fVar == null || (cVar = fVar.f2462a) == null) {
                    hVar.f2473h.remove(str);
                    ((HashMap) hVar.f2472g).put(str, obj);
                    return;
                } else if (hVar.f2470e.remove(str)) {
                    ((C0198e0) cVar).b(obj);
                    return;
                } else {
                    return;
                }
            default:
                this.f2429f.a(this.f2428e, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) this.f2430g));
                return;
        }
    }
}
