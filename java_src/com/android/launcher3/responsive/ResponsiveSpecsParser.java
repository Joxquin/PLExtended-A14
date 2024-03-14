package com.android.launcher3.responsive;

import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import com.android.launcher3.R$styleable;
import com.android.launcher3.responsive.SizeSpec;
import com.android.launcher3.util.ResourceHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.h;
import m3.p;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class ResponsiveSpecsParser {
    private final ResourceHelper resourceHelper;

    public ResponsiveSpecsParser(ResourceHelper resourceHelper) {
        this.resourceHelper = resourceHelper;
    }

    private final Map parseSizeSpecs(XmlResourceParser xmlResourceParser) {
        String name = xmlResourceParser.getName();
        xmlResourceParser.next();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (xmlResourceParser.getEventType() != 1 && !h.a(xmlResourceParser.getName(), name)) {
            if (xmlResourceParser.getEventType() == 2) {
                String name2 = xmlResourceParser.getName();
                h.d(name2, "parser.name");
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                h.d(asAttributeSet, "asAttributeSet(parser)");
                linkedHashMap.put(name2, SizeSpec.Companion.create(this.resourceHelper, asAttributeSet));
            }
            xmlResourceParser.next();
        }
        return linkedHashMap;
    }

    public final List parseXML(String str, p map) {
        h.e(map, "map");
        ResourceHelper resourceHelper = this.resourceHelper;
        XmlResourceParser xml = resourceHelper.getXml();
        boolean z4 = true;
        try {
            try {
                ArrayList arrayList = new ArrayList();
                for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType == 2 && h.a(xml.getName(), str)) {
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                        h.d(asAttributeSet, "asAttributeSet(parser)");
                        TypedArray obtainStyledAttributes = resourceHelper.obtainStyledAttributes(asAttributeSet, R$styleable.ResponsiveSpec);
                        arrayList.add(map.invoke(obtainStyledAttributes, parseSizeSpecs(xml)));
                        obtainStyledAttributes.recycle();
                    }
                }
                xml.close();
                return arrayList;
            } catch (Exception e4) {
                if (!(e4 instanceof NoSuchFieldException ? true : e4 instanceof IOException)) {
                    z4 = e4 instanceof XmlPullParserException;
                }
                if (z4) {
                    throw new RuntimeException("Failure parsing specs file.", e4);
                }
                throw e4;
            }
        } finally {
            xml.close();
        }
    }
}
