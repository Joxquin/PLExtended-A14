package X1;

import J1.C0022e;
import L1.O;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import com.android.launcher3.util.Executors;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ErrorCode;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final O f2038a;

    /* renamed from: b  reason: collision with root package name */
    public final V1.l f2039b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2040c;

    public h(Context context, UserHandle userHandle) {
        Context createPackageContextAsUser = context.createPackageContextAsUser("system", 0, userHandle);
        final O o4 = new O(createPackageContextAsUser, context, new Handler(), Executors.MAIN_EXECUTOR, Executors.UI_HELPER_EXECUTOR, Executors.THREAD_POOL_EXECUTOR);
        o4.f1101c.f1158b.execute(new Runnable() { // from class: L1.M
            @Override // java.lang.Runnable
            public final void run() {
                final O o5 = O.this;
                o5.getClass();
                try {
                    M1.b.f("Connecting to system intelligence module.");
                    J1.t tVar = new J1.t();
                    tVar.f798h = SuggestParcelables$InteractionType.SETUP;
                    C0054i c0054i = o5.f1101c;
                    K1.a aVar = o5.f1102d;
                    String packageName = o5.f1099a.getPackageName();
                    aVar.getClass();
                    c0054i.d(-1, K1.a.c(packageName, "", -1, -1L, tVar, null, null), new InterfaceC0047b() { // from class: L1.N
                        @Override // L1.InterfaceC0047b
                        public final void a(Bundle bundle) {
                            O o6 = O.this;
                            o6.getClass();
                            try {
                                o6.f1102d.getClass();
                                Bundle bundle2 = bundle.getBundle("Contents");
                                J1.I i4 = (bundle2 == null ? new C0022e() : new C0022e(bundle2)).f727g;
                                if (i4 == null) {
                                    M1.b.d("System intelligence is unavailable.", null);
                                    return;
                                }
                                int i5 = M1.c.f1362a;
                                if (i4.f701a == SuggestParcelables$ErrorCode.ERROR_CODE_SUCCESS) {
                                    M1.b.f("Successfully connected to system intelligence: ");
                                    return;
                                }
                                M1.b.d("Unable to connect to system intelligence: " + i4.f702b, null);
                            } catch (RuntimeException e4) {
                                M1.b.d("Unable to connect to system intelligence module.", e4);
                            }
                        }
                    });
                } catch (RuntimeException e4) {
                    M1.b.d("Error while connecting to system intelligence module.", e4);
                }
            }
        });
        this.f2038a = o4;
        L1.r.f1239a = false;
        M1.b.f1361a.f1360a = false;
        this.f2039b = new V1.l(createPackageContextAsUser);
    }
}
