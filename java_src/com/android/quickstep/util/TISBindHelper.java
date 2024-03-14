package com.android.quickstep.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.quickstep.OverviewCommandHelper;
import com.android.quickstep.TouchInteractionService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class TISBindHelper implements ServiceConnection {
    private static final long BACKOFF_MILLIS = 1000;
    private static final long MAX_BACKOFF_MILLIS = 600000;
    private static final String TAG = "TISBindHelper";
    private TouchInteractionService.TISBinder mBinder;
    private short mConnectionAttempts;
    private final Consumer mConnectionCallback;
    private final Context mContext;
    private boolean mIsConnected;
    private boolean mTisServiceBound;
    private final Handler mHandler = new Handler();
    private final Runnable mConnectionRunnable = new Runnable() { // from class: com.android.quickstep.util.X
        @Override // java.lang.Runnable
        public final void run() {
            TISBindHelper.this.internalBindToTIS();
        }
    };
    private final ArrayList mPendingConnectedCallbacks = new ArrayList();

    public TISBindHelper(Context context, Consumer consumer) {
        this.mContext = context;
        this.mConnectionCallback = consumer;
        internalBindToTIS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalBindToTIS() {
        boolean bindService = this.mContext.bindService(new Intent(this.mContext, TouchInteractionService.class), this, 0);
        this.mTisServiceBound = bindService;
        if (bindService) {
            resetServiceBindRetryState();
            return;
        }
        Log.w(TAG, "Retrying TIS Binder connection attempt: " + ((int) this.mConnectionAttempts));
        this.mHandler.postDelayed(this.mConnectionRunnable, (long) Math.min(Math.scalb(1000.0f, (int) this.mConnectionAttempts), 600000.0f));
        this.mConnectionAttempts = (short) (this.mConnectionAttempts + 1);
    }

    private void internalUnbindToTIS() {
        if (this.mTisServiceBound) {
            this.mContext.unbindService(this);
            this.mTisServiceBound = false;
        }
    }

    private void resetServiceBindRetryState() {
        if (this.mHandler.hasCallbacks(this.mConnectionRunnable)) {
            this.mHandler.removeCallbacks(this.mConnectionRunnable);
        }
        this.mConnectionAttempts = (short) 0;
    }

    public TouchInteractionService.TISBinder getBinder() {
        return this.mBinder;
    }

    public OverviewCommandHelper getOverviewCommandHelper() {
        TouchInteractionService.TISBinder tISBinder = this.mBinder;
        if (tISBinder == null) {
            return null;
        }
        return tISBinder.getOverviewCommandHelper();
    }

    public TaskbarManager getTaskbarManager() {
        TouchInteractionService.TISBinder tISBinder = this.mBinder;
        if (tISBinder == null) {
            return null;
        }
        return tISBinder.getTaskbarManager();
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        Log.w(TAG, "TIS binding died");
        internalBindToTIS();
    }

    public void onDestroy() {
        internalUnbindToTIS();
        resetServiceBindRetryState();
        this.mBinder = null;
        this.mIsConnected = false;
        this.mPendingConnectedCallbacks.clear();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (!(iBinder instanceof TouchInteractionService.TISBinder)) {
            internalUnbindToTIS();
            this.mHandler.postDelayed(this.mConnectionRunnable, BACKOFF_MILLIS);
            return;
        }
        Log.d(TAG, "TIS service connected");
        this.mIsConnected = true;
        TouchInteractionService.TISBinder tISBinder = (TouchInteractionService.TISBinder) iBinder;
        this.mBinder = tISBinder;
        this.mConnectionCallback.accept(tISBinder);
        Iterator it = this.mPendingConnectedCallbacks.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mPendingConnectedCallbacks.clear();
        resetServiceBindRetryState();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        Log.d(TAG, "TIS service disconnected");
        this.mBinder = null;
        this.mIsConnected = false;
    }

    public void runOnBindToTouchInteractionService(Runnable runnable) {
        if (this.mIsConnected) {
            runnable.run();
        } else {
            this.mPendingConnectedCallbacks.add(runnable);
        }
    }
}
