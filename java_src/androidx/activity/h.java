package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import c.AbstractC0318b;
import c.C0317a;
import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes.dex */
public final class h extends androidx.activity.result.h {

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ l f2431i;

    public h(l lVar) {
        this.f2431i = lVar;
    }

    @Override // androidx.activity.result.h
    public final void b(int i4, AbstractC0318b abstractC0318b, Object obj) {
        Bundle bundle;
        l lVar = this.f2431i;
        C0317a b4 = abstractC0318b.b(lVar, obj);
        if (b4 != null) {
            new Handler(Looper.getMainLooper()).post(new g(this, i4, b4, 0));
            return;
        }
        Intent a4 = abstractC0318b.a(lVar, obj);
        if (a4.getExtras() != null && a4.getExtras().getClassLoader() == null) {
            a4.setExtrasClassLoader(lVar.getClassLoader());
        }
        if (a4.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            Bundle bundleExtra = a4.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            a4.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            bundle = bundleExtra;
        } else {
            bundle = null;
        }
        if (!"androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(a4.getAction())) {
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(a4.getAction())) {
                Object obj2 = B.c.f105a;
                lVar.startActivityForResult(a4, i4, bundle);
                return;
            }
            androidx.activity.result.k kVar = (androidx.activity.result.k) a4.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                IntentSender intentSender = kVar.f2474d;
                Intent intent = kVar.f2475e;
                int i5 = kVar.f2476f;
                int i6 = kVar.f2477g;
                Object obj3 = B.c.f105a;
                lVar.startIntentSenderForResult(intentSender, i4, intent, i5, i6, 0, bundle);
                return;
            } catch (IntentSender.SendIntentException e4) {
                new Handler(Looper.getMainLooper()).post(new g(this, i4, e4, 1));
                return;
            }
        }
        String[] stringArrayExtra = a4.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        Object obj4 = B.c.f105a;
        HashSet hashSet = new HashSet();
        for (String str : stringArrayExtra) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(stringArrayExtra) + " must not contain null or empty values");
            }
        }
        int size = hashSet.size();
        String[] strArr = size > 0 ? new String[stringArrayExtra.length - size] : stringArrayExtra;
        if (size > 0) {
            if (size == stringArrayExtra.length) {
                return;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < stringArrayExtra.length; i8++) {
                if (!hashSet.contains(Integer.valueOf(i8))) {
                    strArr[i7] = stringArrayExtra[i8];
                    i7++;
                }
            }
        }
        if (lVar instanceof B.a) {
            ((B.a) lVar).validateRequestPermissionsRequestCode(i4);
        }
        lVar.requestPermissions(stringArrayExtra, i4);
    }
}
