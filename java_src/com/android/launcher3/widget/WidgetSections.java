package com.android.launcher3.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.Xml;
import com.android.launcher3.R$styleable;
import com.android.launcher3.util.IntSet;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class WidgetSections {
    private static SparseArray sWidgetSections;
    private static Map sWidgetsToCategories;

    /* loaded from: classes.dex */
    public final class WidgetSection {
        public final int mCategory;
        public final int mSectionDrawable;
        public final int mSectionTitle;

        public WidgetSection(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WidgetSections);
            this.mCategory = obtainStyledAttributes.getInt(1, -1);
            this.mSectionTitle = obtainStyledAttributes.getResourceId(4, 0);
            this.mSectionDrawable = obtainStyledAttributes.getResourceId(3, 0);
        }
    }

    public static synchronized SparseArray getWidgetSections(Context context) {
        synchronized (WidgetSections.class) {
            SparseArray sparseArray = sWidgetSections;
            if (sparseArray != null) {
                return sparseArray;
            }
            parseWidgetSectionsXml(context);
            return sWidgetSections;
        }
    }

    public static synchronized Map getWidgetsToCategory(Context context) {
        synchronized (WidgetSections.class) {
            Map map = sWidgetsToCategories;
            if (map != null) {
                return map;
            }
            parseWidgetSectionsXml(context);
            return sWidgetsToCategories;
        }
    }

    private static synchronized void parseWidgetSectionsXml(Context context) {
        IntSet intSet;
        synchronized (WidgetSections.class) {
            SparseArray sparseArray = new SparseArray();
            ArrayMap arrayMap = new ArrayMap();
            try {
                XmlResourceParser xml = context.getResources().getXml(R.xml.widget_sections);
                try {
                    int depth = xml.getDepth();
                    while (true) {
                        int next = xml.next();
                        if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                            if (next == 2 && "section".equals(xml.getName())) {
                                WidgetSection widgetSection = new WidgetSection(context, Xml.asAttributeSet(xml));
                                int depth2 = xml.getDepth();
                                while (true) {
                                    int next2 = xml.next();
                                    if ((next2 != 3 || xml.getDepth() > depth2) && next2 != 1) {
                                        if (next2 == 2 && "widget".equals(xml.getName())) {
                                            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R$styleable.WidgetSections);
                                            ComponentName unflattenFromString = ComponentName.unflattenFromString(obtainStyledAttributes.getString(2));
                                            boolean z4 = obtainStyledAttributes.getBoolean(0, false);
                                            if (arrayMap.containsKey(unflattenFromString)) {
                                                intSet = (IntSet) arrayMap.get(unflattenFromString);
                                            } else {
                                                IntSet intSet2 = new IntSet();
                                                arrayMap.put(unflattenFromString, intSet2);
                                                intSet = intSet2;
                                            }
                                            if (z4) {
                                                intSet.add(-1);
                                            }
                                            intSet.add(widgetSection.mCategory);
                                        }
                                    }
                                }
                                sparseArray.put(widgetSection.mCategory, widgetSection);
                            }
                        }
                    }
                    sWidgetSections = sparseArray;
                    sWidgetsToCategories = arrayMap;
                    xml.close();
                } catch (Throwable th) {
                    if (xml != null) {
                        try {
                            xml.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException | XmlPullParserException e4) {
                throw new RuntimeException(e4);
            }
        }
    }
}
