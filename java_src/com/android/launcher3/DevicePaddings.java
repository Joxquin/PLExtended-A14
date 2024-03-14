package com.android.launcher3;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class DevicePaddings {
    ArrayList mDevicePaddings = new ArrayList();

    /* loaded from: classes.dex */
    public final class DevicePadding {
        private final PaddingFormula hotseatBottomPadding;
        private final int maxEmptySpacePx;
        private final PaddingFormula workspaceBottomPadding;
        private final PaddingFormula workspaceTopPadding;

        public DevicePadding(int i4, PaddingFormula paddingFormula, PaddingFormula paddingFormula2, PaddingFormula paddingFormula3) {
            this.maxEmptySpacePx = i4;
            this.workspaceTopPadding = paddingFormula;
            this.workspaceBottomPadding = paddingFormula2;
            this.hotseatBottomPadding = paddingFormula3;
        }

        public final int getMaxEmptySpacePx() {
            return this.maxEmptySpacePx;
        }

        public final int getWorkspaceBottomPadding(int i4) {
            return this.workspaceBottomPadding.calculate(i4);
        }

        public final int getWorkspaceTopPadding(int i4) {
            return this.workspaceTopPadding.calculate(i4);
        }

        public final boolean isValid() {
            int i4 = this.maxEmptySpacePx;
            return Math.abs(((getWorkspaceTopPadding(i4) + getWorkspaceBottomPadding(i4)) + this.hotseatBottomPadding.calculate(i4)) - i4) <= 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PaddingFormula {

        /* renamed from: a  reason: collision with root package name */
        private final float f4426a;

        /* renamed from: b  reason: collision with root package name */
        private final float f4427b;

        /* renamed from: c  reason: collision with root package name */
        private final float f4428c;

        public PaddingFormula(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DevicePaddingFormula);
            this.f4426a = getValue(obtainStyledAttributes, 0);
            this.f4427b = getValue(obtainStyledAttributes, 1);
            this.f4428c = getValue(obtainStyledAttributes, 2);
            obtainStyledAttributes.recycle();
        }

        private static float getValue(TypedArray typedArray, int i4) {
            if (typedArray.getType(i4) == 5) {
                return typedArray.getDimensionPixelSize(i4, 0);
            }
            if (typedArray.getType(i4) == 4) {
                return typedArray.getFloat(i4, 0.0f);
            }
            return 0.0f;
        }

        public final int calculate(int i4) {
            return Math.round(((i4 - this.f4428c) * this.f4426a) + this.f4427b);
        }

        public final String toString() {
            return "a=" + this.f4426a + ", b=" + this.f4427b + ", c=" + this.f4428c;
        }
    }

    public DevicePaddings(int i4, Context context) {
        try {
            XmlResourceParser xml = context.getResources().getXml(i4);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                int i5 = 3;
                if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                    if (next == 2 && "device-paddings".equals(xml.getName())) {
                        int depth2 = xml.getDepth();
                        while (true) {
                            int next2 = xml.next();
                            if ((next2 != i5 || xml.getDepth() > depth2) && next2 != 1) {
                                if (next2 == 2 && "device-padding".equals(xml.getName())) {
                                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R$styleable.DevicePadding);
                                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
                                    obtainStyledAttributes.recycle();
                                    int depth3 = xml.getDepth();
                                    PaddingFormula paddingFormula = null;
                                    PaddingFormula paddingFormula2 = null;
                                    PaddingFormula paddingFormula3 = null;
                                    while (true) {
                                        int next3 = xml.next();
                                        if ((next3 != i5 || xml.getDepth() > depth3) && next3 != 1) {
                                            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                                            if (next3 == 2) {
                                                if ("workspaceTopPadding".equals(xml.getName())) {
                                                    paddingFormula = new PaddingFormula(context, asAttributeSet);
                                                } else if ("workspaceBottomPadding".equals(xml.getName())) {
                                                    paddingFormula2 = new PaddingFormula(context, asAttributeSet);
                                                } else if ("hotseatBottomPadding".equals(xml.getName())) {
                                                    paddingFormula3 = new PaddingFormula(context, asAttributeSet);
                                                }
                                            }
                                            i5 = 3;
                                        }
                                    }
                                    DevicePadding devicePadding = new DevicePadding(dimensionPixelSize, paddingFormula, paddingFormula2, paddingFormula3);
                                    if (devicePadding.isValid()) {
                                        this.mDevicePaddings.add(devicePadding);
                                    } else {
                                        Log.e("DevicePaddings", "Invalid device padding found.");
                                    }
                                }
                                i5 = 3;
                            }
                        }
                    }
                }
            }
            xml.close();
            this.mDevicePaddings.sort(new C0408p());
        } catch (IOException | XmlPullParserException e4) {
            Log.e("DevicePaddings", "Failure parsing device padding layout.", e4);
            throw new RuntimeException(e4);
        }
    }
}
