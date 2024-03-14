package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f2880a;

    /* renamed from: b  reason: collision with root package name */
    public int f2881b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f2882c = -1;

    /* renamed from: d  reason: collision with root package name */
    public final SparseArray f2883d = new SparseArray();

    /* renamed from: e  reason: collision with root package name */
    public final SparseArray f2884e = new SparseArray();

    public i(Context context, ConstraintLayout constraintLayout, int i4) {
        this.f2880a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i4);
        try {
            int eventType = xml.getEventType();
            g gVar = null;
            while (true) {
                boolean z4 = true;
                if (eventType == 1) {
                    return;
                }
                if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                z4 = true;
                                break;
                            }
                            z4 = true;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                z4 = true;
                                break;
                            }
                            z4 = true;
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                break;
                            }
                            z4 = true;
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                z4 = false;
                                break;
                            }
                            z4 = true;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                z4 = true;
                                break;
                            }
                            z4 = true;
                            break;
                        default:
                            z4 = true;
                            break;
                    }
                    if (z4) {
                        g gVar2 = new g(context, xml);
                        this.f2883d.put(gVar2.f2870a, gVar2);
                        gVar = gVar2;
                        continue;
                    } else if (z4) {
                        h hVar = new h(context, xml);
                        if (gVar != null) {
                            gVar.f2871b.add(hVar);
                            continue;
                        } else {
                            continue;
                        }
                    } else if (!z4) {
                        continue;
                    } else {
                        a(context, xml);
                        continue;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e4) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i4, e4);
        } catch (XmlPullParserException e5) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i4, e5);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x022a, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r14, org.xmlpull.v1.XmlPullParser r15) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.i.a(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }
}
