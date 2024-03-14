package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import c.AbstractC0318b;
/* renamed from: androidx.fragment.app.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0210k0 extends AbstractC0318b {
    @Override // c.AbstractC0318b
    public final Intent a(androidx.activity.l lVar, Object obj) {
        Bundle bundleExtra;
        androidx.activity.result.k kVar = (androidx.activity.result.k) obj;
        Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
        Intent intent2 = kVar.f2475e;
        if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
            intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                IntentSender intentSender = kVar.f2474d;
                kotlin.jvm.internal.h.e(intentSender, "intentSender");
                kVar = new androidx.activity.result.k(intentSender, null, kVar.f2476f, kVar.f2477g);
            }
        }
        intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", kVar);
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
        }
        return intent;
    }

    @Override // c.AbstractC0318b
    public final Object c(Intent intent, int i4) {
        return new androidx.activity.result.b(intent, i4);
    }
}
