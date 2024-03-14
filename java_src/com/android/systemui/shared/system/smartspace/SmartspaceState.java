package com.android.systemui.shared.system.smartspace;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class SmartspaceState implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    private Rect boundsOnScreen;
    private int selectedPage;
    private boolean visibleOnScreen;

    /* loaded from: classes.dex */
    public final class CREATOR implements Parcelable.Creator {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        public SmartspaceState createFromParcel(Parcel parcel) {
            h.e(parcel, "parcel");
            return new SmartspaceState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SmartspaceState[] newArray(int i4) {
            return new SmartspaceState[i4];
        }
    }

    public SmartspaceState() {
        this.boundsOnScreen = new Rect();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Rect getBoundsOnScreen() {
        return this.boundsOnScreen;
    }

    public final int getSelectedPage() {
        return this.selectedPage;
    }

    public final boolean getVisibleOnScreen() {
        return this.visibleOnScreen;
    }

    public final void setBoundsOnScreen(Rect rect) {
        h.e(rect, "<set-?>");
        this.boundsOnScreen = rect;
    }

    public final void setSelectedPage(int i4) {
        this.selectedPage = i4;
    }

    public final void setVisibleOnScreen(boolean z4) {
        this.visibleOnScreen = z4;
    }

    public String toString() {
        Rect rect = this.boundsOnScreen;
        int i4 = this.selectedPage;
        boolean z4 = this.visibleOnScreen;
        return "boundsOnScreen: " + rect + ", selectedPage: " + i4 + ", visibleOnScreen: " + z4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i4) {
        h.e(dest, "dest");
        dest.writeParcelable(this.boundsOnScreen, 0);
        dest.writeInt(this.selectedPage);
        dest.writeBoolean(this.visibleOnScreen);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SmartspaceState(Parcel parcel) {
        this();
        h.e(parcel, "parcel");
        Rect rect = (Rect) parcel.readParcelable(new PropertyReference1Impl() { // from class: com.android.systemui.shared.system.smartspace.SmartspaceState.1
            @Override // kotlin.jvm.internal.PropertyReference1Impl, r3.i
            public Object get(Object obj) {
                return obj.getClass();
            }
        }.getClass().getClassLoader());
        this.boundsOnScreen = rect == null ? new Rect() : rect;
        this.selectedPage = parcel.readInt();
        this.visibleOnScreen = parcel.readBoolean();
    }
}
