package J1;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.ContentParcelables$AppIconType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: J1.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0022e {

    /* renamed from: a  reason: collision with root package name */
    public String f721a;

    /* renamed from: b  reason: collision with root package name */
    public long f722b;

    /* renamed from: c  reason: collision with root package name */
    public List f723c;

    /* renamed from: d  reason: collision with root package name */
    public J f724d;

    /* renamed from: e  reason: collision with root package name */
    public z f725e;

    /* renamed from: f  reason: collision with root package name */
    public String f726f;

    /* renamed from: g  reason: collision with root package name */
    public I f727g;

    /* renamed from: h  reason: collision with root package name */
    public String f728h;

    public C0022e() {
    }

    public C0022e(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f721a = bundle.getString("id");
        }
        if (bundle.containsKey("screenSessionId")) {
            this.f722b = bundle.getLong("screenSessionId");
        }
        if (bundle.containsKey("contentGroups")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("contentGroups");
            if (parcelableArrayList == null) {
                this.f723c = null;
            } else {
                this.f723c = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f723c).add(null);
                    } else {
                        ((ArrayList) this.f723c).add(new C0021d(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("stats")) {
            Bundle bundle3 = bundle.getBundle("stats");
            if (bundle3 == null) {
                this.f724d = null;
            } else {
                this.f724d = new J(bundle3);
            }
        }
        if (bundle.containsKey("debugInfo")) {
            if (bundle.getBundle("debugInfo") == null) {
                this.f725e = null;
            } else {
                this.f725e = new z();
            }
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f726f = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("setupInfo")) {
            Bundle bundle4 = bundle.getBundle("setupInfo");
            if (bundle4 == null) {
                this.f727g = null;
            } else {
                this.f727g = new I(bundle4);
            }
        }
        if (bundle.containsKey("contentUri")) {
            this.f728h = bundle.getString("contentUri");
        }
    }

    public final Bundle a() {
        Iterator it;
        String str;
        String str2;
        Iterator it2;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = new Bundle();
        String str3 = "id";
        bundle3.putString("id", this.f721a);
        bundle3.putLong("screenSessionId", this.f722b);
        ArrayList<Integer> arrayList = null;
        if (this.f723c == null) {
            bundle3.putParcelableArrayList("contentGroups", null);
        } else {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(((ArrayList) this.f723c).size());
            Iterator it3 = ((ArrayList) this.f723c).iterator();
            while (it3.hasNext()) {
                C0021d c0021d = (C0021d) it3.next();
                if (c0021d == null) {
                    arrayList2.add(arrayList);
                    str = str3;
                    it = it3;
                } else {
                    Bundle bundle4 = new Bundle();
                    if (c0021d.f716a == null) {
                        bundle4.putParcelableArrayList("contentRects", arrayList);
                    } else {
                        ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(((ArrayList) c0021d.f716a).size());
                        Iterator it4 = ((ArrayList) c0021d.f716a).iterator();
                        while (it4.hasNext()) {
                            y yVar = (y) it4.next();
                            if (yVar == null) {
                                arrayList3.add(arrayList);
                            } else {
                                arrayList3.add(yVar.a());
                            }
                        }
                        bundle4.putParcelableArrayList("contentRects", arrayList3);
                    }
                    if (c0021d.f717b == null) {
                        bundle4.putParcelableArrayList("selections", arrayList);
                        it = it3;
                    } else {
                        ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>(c0021d.f717b.size());
                        for (C0024g c0024g : c0021d.f717b) {
                            if (c0024g == null) {
                                arrayList4.add(arrayList);
                            } else {
                                Bundle bundle5 = new Bundle();
                                Iterator it5 = it3;
                                if (c0024g.f733a == null) {
                                    bundle5.putIntegerArrayList("rectIndices", arrayList);
                                } else {
                                    bundle5.putIntegerArrayList("rectIndices", new ArrayList<>(c0024g.f733a));
                                }
                                bundle5.putString(str3, c0024g.f734b);
                                bundle5.putBoolean("isSmartSelection", c0024g.f735c);
                                bundle5.putInt("suggestedPresentationMode", c0024g.f736d);
                                bundle5.putString("opaquePayload", c0024g.f737e);
                                SuggestParcelables$InteractionType suggestParcelables$InteractionType = c0024g.f738f;
                                if (suggestParcelables$InteractionType == null) {
                                    bundle5.putBundle("interactionType", null);
                                } else {
                                    bundle5.putBundle("interactionType", suggestParcelables$InteractionType.c());
                                }
                                bundle5.putInt("contentGroupIndex", c0024g.f739g);
                                arrayList4.add(bundle5);
                                it3 = it5;
                                arrayList = null;
                            }
                        }
                        it = it3;
                        bundle4.putParcelableArrayList("selections", arrayList4);
                    }
                    bundle4.putString("text", c0021d.f718c);
                    bundle4.putInt("numLines", c0021d.f719d);
                    if (c0021d.f720e == null) {
                        bundle4.putParcelableArrayList("searchSuggestions", null);
                        str = str3;
                    } else {
                        ArrayList<? extends Parcelable> arrayList5 = new ArrayList<>(((ArrayList) c0021d.f720e).size());
                        Iterator it6 = ((ArrayList) c0021d.f720e).iterator();
                        while (it6.hasNext()) {
                            C0023f c0023f = (C0023f) it6.next();
                            if (c0023f == null) {
                                arrayList5.add(null);
                            } else {
                                Bundle bundle6 = new Bundle();
                                C0018a c0018a = c0023f.f729a;
                                if (c0018a == null) {
                                    bundle6.putBundle("appActionSuggestion", null);
                                    str2 = str3;
                                } else {
                                    Bundle bundle7 = new Bundle();
                                    str2 = str3;
                                    bundle7.putString("displayText", c0018a.f709a);
                                    bundle7.putString("subtitle", c0018a.f710b);
                                    bundle6.putBundle("appActionSuggestion", bundle7);
                                }
                                C0019b c0019b = c0023f.f730b;
                                if (c0019b == null) {
                                    bundle6.putBundle("appIcon", null);
                                    it2 = it6;
                                } else {
                                    Bundle bundle8 = new Bundle();
                                    bundle8.putString("iconUri", c0019b.f711a);
                                    C0020c c0020c = c0019b.f712b;
                                    if (c0020c == null) {
                                        it2 = it6;
                                        bundle = null;
                                        bundle8.putBundle("appPackage", null);
                                    } else {
                                        it2 = it6;
                                        bundle = null;
                                        bundle8.putBundle("appPackage", c0020c.b());
                                    }
                                    ContentParcelables$AppIconType contentParcelables$AppIconType = c0019b.f713c;
                                    if (contentParcelables$AppIconType == null) {
                                        bundle8.putBundle("appIconType", bundle);
                                    } else {
                                        Bundle bundle9 = new Bundle();
                                        bundle9.putInt("value", contentParcelables$AppIconType.value);
                                        bundle8.putBundle("appIconType", bundle9);
                                    }
                                    bundle6.putBundle("appIcon", bundle8);
                                }
                                C0020c c0020c2 = c0023f.f731c;
                                if (c0020c2 == null) {
                                    bundle6.putBundle("executionInfo", null);
                                } else {
                                    bundle6.putBundle("executionInfo", c0020c2.b());
                                }
                                bundle6.putFloat("confScore", c0023f.f732d);
                                arrayList5.add(bundle6);
                                str3 = str2;
                                it6 = it2;
                            }
                        }
                        str = str3;
                        bundle4.putParcelableArrayList("searchSuggestions", arrayList5);
                    }
                    arrayList2.add(bundle4);
                }
                it3 = it;
                str3 = str;
                arrayList = null;
            }
            bundle3.putParcelableArrayList("contentGroups", arrayList2);
        }
        J j4 = this.f724d;
        if (j4 == null) {
            bundle2 = null;
            bundle3.putBundle("stats", null);
        } else {
            bundle2 = null;
            bundle3.putBundle("stats", j4.a());
        }
        z zVar = this.f725e;
        if (zVar == null) {
            bundle3.putBundle("debugInfo", bundle2);
        } else {
            zVar.getClass();
            bundle3.putBundle("debugInfo", new Bundle());
        }
        bundle3.putString("opaquePayload", this.f726f);
        I i4 = this.f727g;
        if (i4 == null) {
            bundle3.putBundle("setupInfo", null);
        } else {
            bundle3.putBundle("setupInfo", i4.a());
        }
        bundle3.putString("contentUri", this.f728h);
        return bundle3;
    }
}
