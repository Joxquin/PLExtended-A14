package J1;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public String f653a;

    /* renamed from: b  reason: collision with root package name */
    public List f654b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f655c;

    /* renamed from: d  reason: collision with root package name */
    public List f656d;

    /* renamed from: e  reason: collision with root package name */
    public String f657e;

    /* renamed from: f  reason: collision with root package name */
    public String f658f;

    /* renamed from: g  reason: collision with root package name */
    public String f659g;

    /* renamed from: h  reason: collision with root package name */
    public String f660h;

    /* renamed from: i  reason: collision with root package name */
    public float f661i;

    /* renamed from: j  reason: collision with root package name */
    public int f662j;

    /* renamed from: k  reason: collision with root package name */
    public int f663k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f664l;

    /* renamed from: m  reason: collision with root package name */
    public int f665m;

    /* renamed from: n  reason: collision with root package name */
    public int f666n;

    /* renamed from: o  reason: collision with root package name */
    public int f667o;

    /* renamed from: p  reason: collision with root package name */
    public int f668p;

    /* renamed from: q  reason: collision with root package name */
    public String f669q;

    /* renamed from: r  reason: collision with root package name */
    public SuggestParcelables$InteractionType f670r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f671s;

    /* renamed from: t  reason: collision with root package name */
    public List f672t;

    public B() {
    }

    public B(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f653a = bundle.getString("id");
        }
        if (bundle.containsKey("actions")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("actions");
            if (parcelableArrayList == null) {
                this.f654b = null;
            } else {
                this.f654b = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f654b).add(null);
                    } else {
                        ((ArrayList) this.f654b).add(new x(bundle2));
                    }
                }
            }
        }
        if (!bundle.containsKey("entitySpans")) {
            this.f655c = false;
        } else {
            this.f655c = true;
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("entitySpans");
            if (parcelableArrayList2 == null) {
                this.f656d = null;
            } else {
                this.f656d = new ArrayList(parcelableArrayList2.size());
                Iterator it2 = parcelableArrayList2.iterator();
                while (it2.hasNext()) {
                    Bundle bundle3 = (Bundle) it2.next();
                    if (bundle3 == null) {
                        ((ArrayList) this.f656d).add(null);
                    } else {
                        ((ArrayList) this.f656d).add(new C(bundle3));
                    }
                }
            }
        }
        if (bundle.containsKey("searchQueryHint")) {
            this.f657e = bundle.getString("searchQueryHint");
        }
        if (bundle.containsKey("annotationTypeName")) {
            this.f658f = bundle.getString("annotationTypeName");
        }
        if (bundle.containsKey("annotationSourceName")) {
            this.f659g = bundle.getString("annotationSourceName");
        }
        if (bundle.containsKey("verticalTypeName")) {
            this.f660h = bundle.getString("verticalTypeName");
        }
        if (bundle.containsKey("annotationScore")) {
            this.f661i = bundle.getFloat("annotationScore");
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.f662j = bundle.getInt("contentGroupIndex");
        }
        if (bundle.containsKey("selectionIndex")) {
            this.f663k = bundle.getInt("selectionIndex");
        }
        if (bundle.containsKey("isSmartSelection")) {
            this.f664l = bundle.getBoolean("isSmartSelection");
        }
        if (bundle.containsKey("suggestedPresentationMode")) {
            this.f665m = bundle.getInt("suggestedPresentationMode");
        }
        if (bundle.containsKey("numWords")) {
            this.f666n = bundle.getInt("numWords");
        }
        if (bundle.containsKey("startIndex")) {
            this.f667o = bundle.getInt("startIndex");
        }
        if (bundle.containsKey("endIndex")) {
            this.f668p = bundle.getInt("endIndex");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f669q = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("interactionType")) {
            Bundle bundle4 = bundle.getBundle("interactionType");
            if (bundle4 == null) {
                this.f670r = null;
            } else {
                this.f670r = SuggestParcelables$InteractionType.a(bundle4);
            }
        }
        if (bundle.containsKey("shouldStartForResult")) {
            this.f671s = bundle.getBoolean("shouldStartForResult");
        }
        if (bundle.containsKey("kgCollections")) {
            this.f672t = bundle.getStringArrayList("kgCollections");
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f653a);
        if (this.f654b == null) {
            bundle.putParcelableArrayList("actions", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(((ArrayList) this.f654b).size());
            Iterator it = ((ArrayList) this.f654b).iterator();
            while (it.hasNext()) {
                x xVar = (x) it.next();
                if (xVar == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("id", xVar.f831a);
                    bundle2.putString("displayName", xVar.f832b);
                    w wVar = xVar.f833c;
                    if (wVar == null) {
                        bundle2.putBundle("mainAction", null);
                    } else {
                        bundle2.putBundle("mainAction", wVar.a());
                    }
                    if (xVar.f834d == null) {
                        bundle2.putParcelableArrayList("alternateActions", null);
                    } else {
                        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(((ArrayList) xVar.f834d).size());
                        Iterator it2 = ((ArrayList) xVar.f834d).iterator();
                        while (it2.hasNext()) {
                            w wVar2 = (w) it2.next();
                            if (wVar2 == null) {
                                arrayList2.add(null);
                            } else {
                                arrayList2.add(wVar2.a());
                            }
                        }
                        bundle2.putParcelableArrayList("alternateActions", arrayList2);
                    }
                    bundle2.putBoolean("isHiddenAction", xVar.f835e);
                    bundle2.putString("opaquePayload", xVar.f836f);
                    arrayList.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("actions", arrayList);
        }
        if (this.f656d == null) {
            bundle.putParcelableArrayList("entitySpans", null);
        } else {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(((ArrayList) this.f656d).size());
            Iterator it3 = ((ArrayList) this.f656d).iterator();
            while (it3.hasNext()) {
                C c4 = (C) it3.next();
                if (c4 == null) {
                    arrayList3.add(null);
                } else {
                    Bundle bundle3 = new Bundle();
                    if (c4.f673a == null) {
                        bundle3.putParcelableArrayList("rects", null);
                    } else {
                        ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>(((ArrayList) c4.f673a).size());
                        Iterator it4 = ((ArrayList) c4.f673a).iterator();
                        while (it4.hasNext()) {
                            y yVar = (y) it4.next();
                            if (yVar == null) {
                                arrayList4.add(null);
                            } else {
                                arrayList4.add(yVar.a());
                            }
                        }
                        bundle3.putParcelableArrayList("rects", arrayList4);
                    }
                    bundle3.putString("selectionId", c4.f674b);
                    if (c4.f675c == null) {
                        bundle3.putIntegerArrayList("rectIndices", null);
                    } else {
                        bundle3.putIntegerArrayList("rectIndices", new ArrayList<>(c4.f675c));
                    }
                    arrayList3.add(bundle3);
                }
            }
            bundle.putParcelableArrayList("entitySpans", arrayList3);
        }
        bundle.putString("searchQueryHint", this.f657e);
        bundle.putString("annotationTypeName", this.f658f);
        bundle.putString("annotationSourceName", this.f659g);
        bundle.putString("verticalTypeName", this.f660h);
        bundle.putFloat("annotationScore", this.f661i);
        bundle.putInt("contentGroupIndex", this.f662j);
        bundle.putInt("selectionIndex", this.f663k);
        bundle.putBoolean("isSmartSelection", this.f664l);
        bundle.putInt("suggestedPresentationMode", this.f665m);
        bundle.putInt("numWords", this.f666n);
        bundle.putInt("startIndex", this.f667o);
        bundle.putInt("endIndex", this.f668p);
        bundle.putString("opaquePayload", this.f669q);
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = this.f670r;
        if (suggestParcelables$InteractionType == null) {
            bundle.putBundle("interactionType", null);
        } else {
            bundle.putBundle("interactionType", suggestParcelables$InteractionType.c());
        }
        bundle.putBoolean("shouldStartForResult", this.f671s);
        if (this.f672t == null) {
            bundle.putStringArrayList("kgCollections", null);
        } else {
            bundle.putStringArrayList("kgCollections", new ArrayList<>(this.f672t));
        }
        return bundle;
    }
}
