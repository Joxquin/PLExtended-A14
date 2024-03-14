package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: androidx.fragment.app.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0198e0 implements androidx.activity.result.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3403a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AbstractC0220p0 f3404b;

    public /* synthetic */ C0198e0(AbstractC0220p0 abstractC0220p0, int i4) {
        this.f3403a = i4;
        this.f3404b = abstractC0220p0;
    }

    public final void a(androidx.activity.result.b bVar) {
        int i4 = this.f3403a;
        AbstractC0220p0 abstractC0220p0 = this.f3404b;
        switch (i4) {
            case 2:
                C0214m0 c0214m0 = (C0214m0) abstractC0220p0.f3453D.pollFirst();
                if (c0214m0 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    return;
                }
                String str = c0214m0.f3433d;
                int i5 = c0214m0.f3434e;
                K c4 = abstractC0220p0.f3466c.c(str);
                if (c4 != null) {
                    c4.onActivityResult(i5, bVar.f2456d, bVar.f2457e);
                    return;
                }
                Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                return;
            default:
                C0214m0 c0214m02 = (C0214m0) abstractC0220p0.f3453D.pollFirst();
                if (c0214m02 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    return;
                }
                String str2 = c0214m02.f3433d;
                int i6 = c0214m02.f3434e;
                K c5 = abstractC0220p0.f3466c.c(str2);
                if (c5 != null) {
                    c5.onActivityResult(i6, bVar.f2456d, bVar.f2457e);
                    return;
                }
                Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str2);
                return;
        }
    }

    public final void b(Object obj) {
        switch (this.f3403a) {
            case 0:
                Map map = (Map) obj;
                String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    iArr[i4] = ((Boolean) arrayList.get(i4)).booleanValue() ? 0 : -1;
                }
                AbstractC0220p0 abstractC0220p0 = this.f3404b;
                C0214m0 c0214m0 = (C0214m0) abstractC0220p0.f3453D.pollFirst();
                if (c0214m0 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    return;
                }
                String str = c0214m0.f3433d;
                int i5 = c0214m0.f3434e;
                K c4 = abstractC0220p0.f3466c.c(str);
                if (c4 != null) {
                    c4.onRequestPermissionsResult(i5, strArr, iArr);
                    return;
                }
                Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                return;
            case 1:
            default:
                a((androidx.activity.result.b) obj);
                return;
            case 2:
                a((androidx.activity.result.b) obj);
                return;
        }
    }
}
