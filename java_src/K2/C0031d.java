package K2;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* renamed from: K2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0031d implements n1.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f976a;

    public C0031d(String str) {
        this.f976a = str;
    }

    @Override // n1.c
    public final void a(View view, PendingIntent pendingIntent) {
        try {
            pendingIntent.send();
        } catch (PendingIntent.CanceledException e4) {
            Log.e(this.f976a, "Cannot invoke canceled smartspace intent", e4);
        }
    }

    @Override // n1.c
    public final void b(View view, Intent intent) {
        try {
            view.getContext().startActivity(intent);
        } catch (ActivityNotFoundException | NullPointerException | SecurityException e4) {
            Log.e(this.f976a, "Cannot invoke smartspace intent", e4);
        }
    }
}
