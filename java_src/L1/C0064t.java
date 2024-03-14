package L1;

import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
/* renamed from: L1.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0064t {
    public static void a(J1.B b4, J1.r rVar) {
        List list;
        if (b4 == null || !b4.f655c || (list = b4.f656d) == null) {
            return;
        }
        int i4 = M1.c.f1362a;
        ArrayList arrayList = (ArrayList) list;
        if (arrayList.isEmpty() || arrayList.isEmpty() || arrayList.get(0) == null) {
            return;
        }
        J1.C c4 = (J1.C) arrayList.get(0);
        c4.getClass();
        String str = c4.f674b;
        if (str != null) {
            rVar.f785l = str;
        }
    }

    public static J1.k b(J1.x xVar, int i4) {
        J1.k kVar = new J1.k();
        kVar.f753a = xVar.f831a;
        kVar.f754b = xVar.f832b;
        kVar.f755c = i4;
        kVar.f756d = xVar.f835e ? FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.ON_OVERFLOW_MENU : FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.ON_PRIMARY_MENU;
        J1.w wVar = xVar.f833c;
        int i5 = M1.c.f1362a;
        wVar.getClass();
        kVar.f757e = wVar.f829g;
        return kVar;
    }

    public static List c(J1.B b4) {
        int i4 = 0;
        if (b4.f654b == null) {
            return new ArrayList(0);
        }
        List list = b4.f654b;
        int i5 = M1.c.f1362a;
        list.getClass();
        ArrayList arrayList = new ArrayList(((ArrayList) list).size());
        while (true) {
            List list2 = b4.f654b;
            list2.getClass();
            if (i4 >= ((ArrayList) list2).size()) {
                return arrayList;
            }
            List list3 = b4.f654b;
            list3.getClass();
            arrayList.add(b((J1.x) ((ArrayList) list3).get(i4), i4));
            i4++;
        }
    }

    public static List d(J1.B b4) {
        if (b4.f654b == null) {
            return new ArrayList(0);
        }
        List list = b4.f654b;
        int i4 = M1.c.f1362a;
        list.getClass();
        final ArrayList arrayList = new ArrayList(((ArrayList) list).size());
        List list2 = b4.f654b;
        list2.getClass();
        ((ArrayList) list2).forEach(new Consumer() { // from class: L1.s
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                List list3 = arrayList;
                J1.w wVar = ((J1.x) obj).f833c;
                int i5 = M1.c.f1362a;
                wVar.getClass();
                list3.add(wVar);
            }
        });
        return arrayList;
    }

    public static String e(J1.B b4, FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType) {
        String str = b4.f660h;
        if (str == null) {
            return "UNKNOWN_VERTICAL_TYPE";
        }
        int i4 = M1.c.f1362a;
        if (str.equals("UNKNOWN_VERTICAL_TYPE") && feedbackParcelables$SelectionFeedback$SelectionType == FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE) {
            return "IMAGE";
        }
        String str2 = b4.f660h;
        str2.getClass();
        return str2;
    }
}
