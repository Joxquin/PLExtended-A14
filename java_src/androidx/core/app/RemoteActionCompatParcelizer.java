package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import i0.c;
import i0.e;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(c cVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        e eVar = remoteActionCompat.f3056a;
        if (cVar.j(1)) {
            eVar = cVar.r();
        }
        remoteActionCompat.f3056a = (IconCompat) eVar;
        CharSequence charSequence = remoteActionCompat.f3057b;
        if (cVar.j(2)) {
            charSequence = cVar.i();
        }
        remoteActionCompat.f3057b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f3058c;
        if (cVar.j(3)) {
            charSequence2 = cVar.i();
        }
        remoteActionCompat.f3058c = charSequence2;
        Parcelable parcelable = remoteActionCompat.f3059d;
        if (cVar.j(4)) {
            parcelable = cVar.n();
        }
        remoteActionCompat.f3059d = (PendingIntent) parcelable;
        boolean z4 = remoteActionCompat.f3060e;
        if (cVar.j(5)) {
            z4 = cVar.f();
        }
        remoteActionCompat.f3060e = z4;
        boolean z5 = remoteActionCompat.f3061f;
        if (cVar.j(6)) {
            z5 = cVar.f();
        }
        remoteActionCompat.f3061f = z5;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, c cVar) {
        cVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f3056a;
        cVar.s(1);
        cVar.E(iconCompat);
        CharSequence charSequence = remoteActionCompat.f3057b;
        cVar.s(2);
        cVar.x(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f3058c;
        cVar.s(3);
        cVar.x(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.f3059d;
        cVar.s(4);
        cVar.A(pendingIntent);
        boolean z4 = remoteActionCompat.f3060e;
        cVar.s(5);
        cVar.u(z4);
        boolean z5 = remoteActionCompat.f3061f;
        cVar.s(6);
        cVar.u(z5);
    }
}
