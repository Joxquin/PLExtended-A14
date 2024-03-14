package com.android.wm.shell.pip;

import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.Parcel;
import android.view.SurfaceControl;
/* loaded from: classes.dex */
public final class a implements IPip {

    /* renamed from: d  reason: collision with root package name */
    public final IBinder f6348d;

    public a(IBinder iBinder) {
        this.f6348d = iBinder;
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void abortSwipePipToHome(int i4, ComponentName componentName) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeInt(i4);
            obtain.writeTypedObject(componentName, 0);
            this.f6348d.transact(4, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6348d;
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void setLauncherAppIconSize(int i4) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeInt(i4);
            this.f6348d.transact(9, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void setLauncherKeepClearAreaHeight(boolean z4, int i4) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeBoolean(z4);
            obtain.writeInt(i4);
            this.f6348d.transact(8, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void setPipAnimationListener(IPipAnimationListener iPipAnimationListener) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeStrongInterface(iPipAnimationListener);
            this.f6348d.transact(5, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void setPipAnimationTypeToAlpha() {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            this.f6348d.transact(7, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void setShelfHeight(boolean z4, int i4) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeBoolean(z4);
            obtain.writeInt(i4);
            this.f6348d.transact(6, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final Rect startSwipePipToHome(ComponentName componentName, ActivityInfo activityInfo, PictureInPictureParams pictureInPictureParams, int i4, Rect rect) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeTypedObject(componentName, 0);
            obtain.writeTypedObject(activityInfo, 0);
            obtain.writeTypedObject(pictureInPictureParams, 0);
            obtain.writeInt(i4);
            obtain.writeTypedObject(rect, 0);
            this.f6348d.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return (Rect) obtain2.readTypedObject(Rect.CREATOR);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.android.wm.shell.pip.IPip
    public final void stopSwipePipToHome(int i4, ComponentName componentName, Rect rect, SurfaceControl surfaceControl) {
        Parcel obtain = Parcel.obtain(this.f6348d);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.pip.IPip");
            obtain.writeInt(i4);
            obtain.writeTypedObject(componentName, 0);
            obtain.writeTypedObject(rect, 0);
            obtain.writeTypedObject(surfaceControl, 0);
            this.f6348d.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
