package com.android.launcher3;

import android.content.ComponentName;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.SurfaceControl;
import com.android.launcher3.views.ActivityContext;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class GestureNavContract {
    private static StaticMessageReceiver sMessageReceiver;
    public final ComponentName componentName;
    private final Message mCallback;
    public final UserHandle user;

    /* loaded from: classes.dex */
    final class StaticMessageReceiver implements Handler.Callback {
        private final Messenger mMessenger = new Messenger(new Handler(Looper.getMainLooper(), this));
        private WeakReference mLastTarget = new WeakReference(null);

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 0) {
                ActivityContext activityContext = (ActivityContext) this.mLastTarget.get();
                if (activityContext != null) {
                    AbstractFloatingView.closeOpenViews(activityContext, false, 8192);
                    return true;
                }
                return true;
            }
            return false;
        }

        public final Message setCurrentContext(Launcher launcher) {
            this.mLastTarget = new WeakReference(launcher);
            Message obtain = Message.obtain();
            obtain.replyTo = this.mMessenger;
            obtain.what = 0;
            return obtain;
        }
    }

    public GestureNavContract(ComponentName componentName, UserHandle userHandle, Message message) {
        this.componentName = componentName;
        this.user = userHandle;
        this.mCallback = message;
    }

    public final void sendEndPosition(RectF rectF, Launcher launcher, SurfaceControl surfaceControl) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("gesture_nav_contract_icon_position", rectF);
        bundle.putParcelable("gesture_nav_contract_surface_control", surfaceControl);
        if (sMessageReceiver == null) {
            sMessageReceiver = new StaticMessageReceiver();
        }
        bundle.putParcelable("gesture_nav_contract_finish_callback", sMessageReceiver.setCurrentContext(launcher));
        Message obtain = Message.obtain();
        obtain.copyFrom(this.mCallback);
        obtain.setData(bundle);
        try {
            obtain.replyTo.send(obtain);
        } catch (RemoteException e4) {
            Log.e("GestureNavContract", "Error sending icon position", e4);
        }
    }
}
