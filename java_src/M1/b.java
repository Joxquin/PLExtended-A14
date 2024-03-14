package M1;

import J1.A;
import J1.B;
import J1.C;
import J1.C0021d;
import J1.C0022e;
import J1.C0024g;
import J1.F;
import J1.G;
import J1.H;
import J1.w;
import J1.x;
import J1.y;
import android.util.Log;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import t.C1395a;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f1361a = new a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.List] */
    public static void a(StringBuilder sb, w wVar) {
        if (f1361a.f1360a) {
            sb.append("___");
            sb.append("id = ");
            sb.append(wVar.f823a);
            sb.append('\n');
            sb.append("___");
            sb.append("displayName = ");
            sb.append(wVar.f824b);
            sb.append('\n');
            sb.append("___");
            sb.append("fullDisplayName = ");
            sb.append(wVar.f827e);
            sb.append('\n');
            F f4 = wVar.f829g;
            if (f4 != null) {
                sb.append("___");
                sb.append("action = ");
                sb.append(f4.f683d);
                sb.append('\n');
                sb.append("___");
                sb.append("uri = ");
                sb.append(f4.f684e);
                sb.append('\n');
                sb.append("___");
                sb.append("package = ");
                sb.append(f4.f681b);
                sb.append('\n');
                sb.append("___");
                sb.append("class = ");
                sb.append(f4.f682c);
                sb.append('\n');
                sb.append("___");
                sb.append("mime = ");
                sb.append(f4.f685f);
                sb.append('\n');
                sb.append("___");
                sb.append("flags = ");
                sb.append(f4.f686g);
                sb.append('\n');
                ArrayList<G> arrayList = new ArrayList();
                ?? r5 = f4.f680a;
                if (r5 != 0) {
                    arrayList = r5;
                }
                int i4 = c.f1362a;
                for (G g4 : arrayList) {
                    sb.append("____");
                    sb.append(g4.f688a);
                    sb.append(" = ");
                    sb.append(g4.f690c);
                    sb.append('|');
                    sb.append(g4.f695h);
                    sb.append('|');
                    sb.append(g4.f692e);
                    sb.append('\n');
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List] */
    public static String b(C0022e c0022e) {
        if (c0022e.f723c == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder("Found ");
        ArrayList<C0021d> arrayList = new ArrayList();
        ?? r10 = c0022e.f723c;
        if (r10 != 0) {
            arrayList = r10;
        }
        int i4 = c.f1362a;
        sb.append(arrayList.size());
        sb.append(" contents:\n\n");
        int i5 = 0;
        for (C0021d c0021d : arrayList) {
            if (c0021d != null) {
                ArrayList arrayList2 = new ArrayList();
                ?? r5 = c0021d.f716a;
                if (r5 != 0) {
                    arrayList2 = r5;
                }
                sb.append("__Content Group Index: ");
                sb.append(i5);
                sb.append("; Found ");
                sb.append(arrayList2.size());
                sb.append(" rects:\n__Selections:\n");
                List<C0024g> list = c0021d.f717b;
                if (list != null) {
                    for (C0024g c0024g : list) {
                        sb.append(String.format("___%s", c0024g.f734b));
                        List<Integer> list2 = c0024g.f733a;
                        if (list2 != null) {
                            for (Integer num : list2) {
                                int intValue = num.intValue();
                                List list3 = c0021d.f716a;
                                list3.getClass();
                                if (((ArrayList) list3).size() > intValue && intValue >= 0) {
                                    List list4 = c0021d.f716a;
                                    list4.getClass();
                                    sb.append(String.format(" [ %s ]", ((y) ((ArrayList) list4).get(intValue)).f838b));
                                }
                            }
                        }
                        sb.append("\n");
                    }
                }
                List list5 = c0021d.f716a;
                list5.getClass();
                Iterator it = ((ArrayList) list5).iterator();
                int i6 = 0;
                while (it.hasNext()) {
                    y yVar = (y) it.next();
                    sb.append("    Rect #");
                    sb.append(i6);
                    sb.append(":");
                    H h4 = yVar.f837a;
                    if (h4 != null) {
                        sb.append('(');
                        sb.append(h4.f697a);
                        sb.append(',');
                        sb.append(h4.f698b);
                        sb.append(',');
                        sb.append(h4.f699c);
                        sb.append(',');
                        sb.append(h4.f700d);
                        sb.append(") --      ");
                        sb.append(yVar.f838b);
                        sb.append("\n");
                        i6++;
                    }
                }
                i5++;
            }
        }
        return sb.toString();
    }

    public static void c(String str) {
        if (f1361a.f1360a) {
            Log.d("AiAiSuggestUi", str);
        }
    }

    public static void d(String str, Throwable th) {
        Log.e("AiAiSuggestUi", str, th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.List] */
    public static String e(EntitiesData entitiesData) {
        A entities = entitiesData.entities();
        StringBuilder sb = new StringBuilder("-------------------------------------------\nid = ");
        sb.append(entities.f645a);
        sb.append("\nsuccess = ");
        sb.append(entities.f646b);
        sb.append("\nentities = ");
        ArrayList<B> arrayList = new ArrayList();
        ?? r9 = entities.f647c;
        if (r9 != 0) {
            arrayList = r9;
        }
        int i4 = c.f1362a;
        sb.append(arrayList.size());
        sb.append('\n');
        for (B b4 : arrayList) {
            StringBuilder a4 = C1395a.a("_id = ");
            a4.append(b4.f653a);
            a4.append("\n_query = ");
            a4.append(b4.f657e);
            a4.append("\n_contentGroupIndex = ");
            a4.append(b4.f662j);
            a4.append("\n_selectionIndex = ");
            a4.append(b4.f663k);
            a4.append('\n');
            ArrayList<x> arrayList2 = new ArrayList();
            ?? r5 = b4.f654b;
            if (r5 != 0) {
                arrayList2 = r5;
            }
            int i5 = c.f1362a;
            for (x xVar : arrayList2) {
                a4.append("__");
                a4.append("id = ");
                a4.append(xVar.f831a);
                a4.append('\n');
                a4.append("__");
                a4.append("displayName = ");
                a4.append(xVar.f832b);
                a4.append('\n');
                w wVar = xVar.f833c;
                wVar.getClass();
                a(a4, wVar);
                ArrayList<w> arrayList3 = new ArrayList();
                ?? r52 = xVar.f834d;
                if (r52 != 0) {
                    arrayList3 = r52;
                }
                for (w wVar2 : arrayList3) {
                    a(a4, wVar2);
                }
            }
            ArrayList<C> arrayList4 = new ArrayList();
            ?? r22 = b4.f656d;
            if (r22 != 0) {
                arrayList4 = r22;
            }
            for (C c4 : arrayList4) {
                a4.append("__");
                a4.append("view = ");
                ArrayList<y> arrayList5 = new ArrayList();
                ?? r4 = c4.f673a;
                if (r4 != 0) {
                    arrayList5 = r4;
                }
                for (y yVar : arrayList5) {
                    H h4 = yVar.f837a;
                    if (h4 != null) {
                        a4.append('(');
                        a4.append(h4.f697a);
                        a4.append(',');
                        a4.append(h4.f698b);
                        a4.append(',');
                        a4.append(h4.f699c);
                        a4.append(',');
                        a4.append(h4.f700d);
                        a4.append(')');
                    }
                }
            }
            a4.append('\n');
            sb.append(a4.toString());
        }
        sb.append("-------------------------------------------\n");
        return sb.toString();
    }

    public static void f(String str) {
        Log.i("AiAiSuggestUi", str);
    }
}
