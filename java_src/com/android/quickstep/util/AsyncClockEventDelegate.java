package com.android.quickstep.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.ArrayMap;
import android.widget.TextClock;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public class AsyncClockEventDelegate extends TextClock.ClockEventDelegate implements SettingsCache.OnChangeListener {
    private final Context mContext;
    private boolean mDestroyed;
    private final List mFormatObservers;
    private boolean mFormatRegistered;
    private final Uri mFormatUri;
    private final SimpleBroadcastReceiver mReceiver;
    private final ArrayMap mTimeEventReceivers;

    public AsyncClockEventDelegate(Context context) {
        super(context);
        this.mReceiver = new SimpleBroadcastReceiver(new C0562h(this, 1));
        this.mTimeEventReceivers = new ArrayMap();
        this.mFormatObservers = new ArrayList();
        this.mFormatUri = Settings.System.getUriFor("time_12_24");
        this.mFormatRegistered = false;
        this.mDestroyed = false;
        this.mContext = context;
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0563i(this, 0));
    }

    public /* synthetic */ void lambda$new$0() {
        this.mReceiver.register(this.mContext, "android.intent.action.TIME_SET", "android.intent.action.TIMEZONE_CHANGED");
    }

    public /* synthetic */ void lambda$onClockEventReceived$2(BroadcastReceiver broadcastReceiver, Intent intent) {
        broadcastReceiver.onReceive(this.mContext, intent);
    }

    public /* synthetic */ void lambda$onClockEventReceived$3(final Intent intent, final BroadcastReceiver broadcastReceiver, Handler handler) {
        handler.post(new Runnable() { // from class: com.android.quickstep.util.k
            @Override // java.lang.Runnable
            public final void run() {
                AsyncClockEventDelegate.this.lambda$onClockEventReceived$2(broadcastReceiver, intent);
            }
        });
    }

    public void lambda$onDestroy$4() {
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.mReceiver;
        Context context = this.mContext;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public /* synthetic */ void lambda$onSettingsChanged$1(ContentObserver contentObserver) {
        contentObserver.dispatchChange(false, this.mFormatUri);
    }

    public void onClockEventReceived(final Intent intent) {
        if (this.mDestroyed) {
            return;
        }
        synchronized (this.mReceiver) {
            this.mTimeEventReceivers.forEach(new BiConsumer() { // from class: com.android.quickstep.util.j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    AsyncClockEventDelegate.this.lambda$onClockEventReceived$3(intent, (BroadcastReceiver) obj, (Handler) obj2);
                }
            });
        }
    }

    public void onDestroy() {
        this.mDestroyed = true;
        ((SettingsCache) SettingsCache.INSTANCE.get(this.mContext)).unregister(this.mFormatUri, this);
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0563i(this, 1));
    }

    @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
    public void onSettingsChanged(boolean z4) {
        if (this.mDestroyed) {
            return;
        }
        synchronized (this.mFormatObservers) {
            this.mFormatObservers.forEach(new C0562h(this, 0));
        }
    }

    public void registerFormatChangeObserver(ContentObserver contentObserver, int i4) {
        synchronized (this.mFormatObservers) {
            if (!this.mFormatRegistered && !this.mDestroyed) {
                ((SettingsCache) SettingsCache.INSTANCE.get(this.mContext)).register(this.mFormatUri, this);
                this.mFormatRegistered = true;
            }
            this.mFormatObservers.add(contentObserver);
        }
    }

    public void registerTimeChangeReceiver(BroadcastReceiver broadcastReceiver, Handler handler) {
        synchronized (this.mTimeEventReceivers) {
            ArrayMap arrayMap = this.mTimeEventReceivers;
            if (handler == null) {
                handler = new Handler();
            }
            arrayMap.put(broadcastReceiver, handler);
        }
    }

    public void unregisterFormatChangeObserver(ContentObserver contentObserver) {
        synchronized (this.mFormatObservers) {
            this.mFormatObservers.remove(contentObserver);
        }
    }

    public void unregisterTimeChangeReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mTimeEventReceivers) {
            this.mTimeEventReceivers.remove(broadcastReceiver);
        }
    }
}
