package X;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class T {

    /* renamed from: e  reason: collision with root package name */
    public static final Class[] f1959e = {Context.class, AttributeSet.class};

    /* renamed from: f  reason: collision with root package name */
    public static final HashMap f1960f = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public final Context f1961a;

    /* renamed from: c  reason: collision with root package name */
    public X f1963c;

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f1962b = new Object[2];

    /* renamed from: d  reason: collision with root package name */
    public String[] f1964d = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public T(Context context, X x4) {
        this.f1961a = context;
        this.f1963c = x4;
    }

    public final Preference a(String str, String[] strArr, AttributeSet attributeSet) {
        Class<?> cls;
        HashMap hashMap = f1960f;
        Constructor<?> constructor = (Constructor) hashMap.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f1961a.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        cls = null;
                        ClassNotFoundException e4 = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e5) {
                                e4 = e5;
                            }
                        }
                        if (cls == null) {
                            if (e4 == null) {
                                throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                            }
                            throw e4;
                        }
                        constructor = cls.getConstructor(f1959e);
                        constructor.setAccessible(true);
                        hashMap.put(str, constructor);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor = cls.getConstructor(f1959e);
                    constructor.setAccessible(true);
                    hashMap.put(str, constructor);
                } catch (ClassNotFoundException e6) {
                    throw e6;
                }
            } catch (Exception e7) {
                InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                inflateException.initCause(e7);
                throw inflateException;
            }
        }
        Object[] objArr = this.f1962b;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    public final Preference b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? a(str, this.f1964d, attributeSet) : a(str, null, attributeSet);
        } catch (InflateException e4) {
            throw e4;
        } catch (ClassNotFoundException e5) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e5);
            throw inflateException;
        } catch (Exception e6) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e6);
            throw inflateException2;
        }
    }

    public final PreferenceGroup c(XmlPullParser xmlPullParser) {
        int next;
        PreferenceGroup preferenceGroup;
        synchronized (this.f1962b) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f1962b[0] = this.f1961a;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e4) {
                    throw e4;
                } catch (IOException e5) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e5.getMessage());
                    inflateException.initCause(e5);
                    throw inflateException;
                } catch (XmlPullParserException e6) {
                    InflateException inflateException2 = new InflateException(e6.getMessage());
                    inflateException2.initCause(e6);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            preferenceGroup = (PreferenceGroup) b(xmlPullParser.getName(), asAttributeSet);
            preferenceGroup.onAttachedToHierarchy(this.f1963c);
            d(xmlPullParser, preferenceGroup, asAttributeSet);
        }
        return preferenceGroup;
    }

    public final void d(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                boolean equals = "intent".equals(name);
                Context context = this.f1961a;
                if (equals) {
                    try {
                        preference.setIntent(Intent.parseIntent(context.getResources(), xmlPullParser, attributeSet));
                    } catch (IOException e4) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e4);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    context.getResources().parseBundleExtra("extra", attributeSet, preference.getExtras());
                    try {
                        int depth2 = xmlPullParser.getDepth();
                        while (true) {
                            int next2 = xmlPullParser.next();
                            if (next2 != 1 && (next2 != 3 || xmlPullParser.getDepth() > depth2)) {
                            }
                        }
                    } catch (IOException e5) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e5);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference b4 = b(name, attributeSet);
                    ((PreferenceGroup) preference).a(b4);
                    d(xmlPullParser, b4, attributeSet);
                }
            }
        }
    }
}
