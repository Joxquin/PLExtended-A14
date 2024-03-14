package i;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import androidx.core.view.AbstractC0166c;
import d.C0792a;
import j.C1097o;
import java.io.IOException;
import k.C1154o0;
import k.R0;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class j extends MenuInflater {

    /* renamed from: e  reason: collision with root package name */
    public static final Class[] f9590e;

    /* renamed from: f  reason: collision with root package name */
    public static final Class[] f9591f;

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f9592a;

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f9593b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f9594c;

    /* renamed from: d  reason: collision with root package name */
    public Object f9595d;

    static {
        Class[] clsArr = {Context.class};
        f9590e = clsArr;
        f9591f = clsArr;
    }

    public j(Context context) {
        super(context);
        this.f9594c = context;
        Object[] objArr = {context};
        this.f9592a = objArr;
        this.f9593b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int i4;
        ColorStateList colorStateList;
        i iVar = new i(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i4 = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z4 = false;
        boolean z5 = false;
        String str = null;
        while (!z4) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            Menu menu2 = iVar.f9564a;
            z4 = z4;
            z4 = z4;
            if (eventType != i4) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z5 && name2.equals(str)) {
                        z5 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        iVar.f9565b = 0;
                        iVar.f9566c = 0;
                        iVar.f9567d = 0;
                        iVar.f9568e = 0;
                        iVar.f9569f = true;
                        iVar.f9570g = true;
                        z4 = z4;
                    } else if (name2.equals("item")) {
                        z4 = z4;
                        if (!iVar.f9571h) {
                            AbstractC0166c abstractC0166c = iVar.f9589z;
                            if (abstractC0166c == null || !abstractC0166c.a()) {
                                iVar.f9571h = true;
                                iVar.b(menu2.add(iVar.f9565b, iVar.f9572i, iVar.f9573j, iVar.f9574k));
                                z4 = z4;
                            } else {
                                iVar.f9571h = true;
                                iVar.b(menu2.addSubMenu(iVar.f9565b, iVar.f9572i, iVar.f9573j, iVar.f9574k).getItem());
                                z4 = z4;
                            }
                        }
                    } else {
                        z4 = z4;
                        if (name2.equals("menu")) {
                            z4 = true;
                        }
                    }
                }
            } else if (!z5) {
                String name3 = xmlPullParser.getName();
                boolean equals = name3.equals("group");
                j jVar = iVar.f9563E;
                if (equals) {
                    TypedArray obtainStyledAttributes = jVar.f9594c.obtainStyledAttributes(attributeSet, C0792a.f8746p);
                    iVar.f9565b = obtainStyledAttributes.getResourceId(1, 0);
                    iVar.f9566c = obtainStyledAttributes.getInt(3, 0);
                    iVar.f9567d = obtainStyledAttributes.getInt(4, 0);
                    iVar.f9568e = obtainStyledAttributes.getInt(5, 0);
                    iVar.f9569f = obtainStyledAttributes.getBoolean(2, true);
                    iVar.f9570g = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                    z4 = z4;
                } else if (name3.equals("item")) {
                    Context context = jVar.f9594c;
                    R0 r02 = new R0(context, context.obtainStyledAttributes(attributeSet, C0792a.f8747q));
                    iVar.f9572i = r02.i(2, 0);
                    iVar.f9573j = (r02.h(5, iVar.f9566c) & (-65536)) | (r02.h(6, iVar.f9567d) & 65535);
                    iVar.f9574k = r02.k(7);
                    iVar.f9575l = r02.k(8);
                    iVar.f9576m = r02.i(0, 0);
                    String j4 = r02.j(9);
                    iVar.f9577n = j4 == null ? (char) 0 : j4.charAt(0);
                    iVar.f9578o = r02.h(16, 4096);
                    String j5 = r02.j(10);
                    iVar.f9579p = j5 == null ? (char) 0 : j5.charAt(0);
                    iVar.f9580q = r02.h(20, 4096);
                    if (r02.l(11)) {
                        iVar.f9581r = r02.a(11, false) ? 1 : 0;
                    } else {
                        iVar.f9581r = iVar.f9568e;
                    }
                    iVar.f9582s = r02.a(3, false);
                    iVar.f9583t = r02.a(4, iVar.f9569f);
                    iVar.f9584u = r02.a(1, iVar.f9570g);
                    iVar.f9585v = r02.h(21, -1);
                    iVar.f9588y = r02.j(12);
                    iVar.f9586w = r02.i(13, 0);
                    iVar.f9587x = r02.j(15);
                    String j6 = r02.j(14);
                    boolean z6 = j6 != null;
                    if (z6 && iVar.f9586w == 0 && iVar.f9587x == null) {
                        iVar.f9589z = (AbstractC0166c) iVar.a(j6, f9591f, jVar.f9593b);
                    } else {
                        if (z6) {
                            Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                        }
                        iVar.f9589z = null;
                    }
                    iVar.f9559A = r02.k(17);
                    iVar.f9560B = r02.k(22);
                    if (r02.l(19)) {
                        iVar.f9562D = C1154o0.b(r02.h(19, -1), iVar.f9562D);
                        colorStateList = null;
                    } else {
                        colorStateList = null;
                        iVar.f9562D = null;
                    }
                    if (r02.l(18)) {
                        iVar.f9561C = r02.b(18);
                    } else {
                        iVar.f9561C = colorStateList;
                    }
                    r02.n();
                    iVar.f9571h = false;
                } else if (name3.equals("menu")) {
                    iVar.f9571h = true;
                    SubMenu addSubMenu = menu2.addSubMenu(iVar.f9565b, iVar.f9572i, iVar.f9573j, iVar.f9574k);
                    iVar.b(addSubMenu.getItem());
                    b(xmlPullParser, attributeSet, addSubMenu);
                } else {
                    str = name3;
                    z5 = true;
                }
            }
            eventType = xmlPullParser.next();
            i4 = 2;
            z4 = z4;
            z5 = z5;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i4, Menu menu) {
        if (!(menu instanceof G.a)) {
            super.inflate(i4, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z4 = false;
        try {
            try {
                xmlResourceParser = this.f9594c.getResources().getLayout(i4);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof C1097o) {
                    C1097o c1097o = (C1097o) menu;
                    if (!c1097o.f10579p) {
                        c1097o.w();
                        z4 = true;
                    }
                }
                b(xmlResourceParser, asAttributeSet, menu);
                if (z4) {
                    ((C1097o) menu).v();
                }
                xmlResourceParser.close();
            } catch (IOException e4) {
                throw new InflateException("Error inflating menu XML", e4);
            } catch (XmlPullParserException e5) {
                throw new InflateException("Error inflating menu XML", e5);
            }
        } catch (Throwable th) {
            if (z4) {
                ((C1097o) menu).v();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
