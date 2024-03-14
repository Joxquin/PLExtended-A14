package com.android.launcher3.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class SettingsCache extends ContentObserver implements SafeCloseable {
    private Map mKeyCache;
    private final Map mListenerMap;
    protected final ContentResolver mResolver;
    public static final Uri NOTIFICATION_BADGING_URI = Settings.Secure.getUriFor("notification_badging");
    public static final Uri ROTATION_SETTING_URI = Settings.System.getUriFor("accelerometer_rotation");
    private static final String SYSTEM_URI_PREFIX = Settings.System.CONTENT_URI.toString();
    public static MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new D());

    /* loaded from: classes.dex */
    public interface OnChangeListener {
        void onSettingsChanged(boolean z4);
    }

    private SettingsCache(Context context) {
        super(new Handler());
        this.mKeyCache = new ConcurrentHashMap();
        this.mListenerMap = new HashMap();
        this.mResolver = context.getContentResolver();
    }

    public static /* synthetic */ SettingsCache a(Context context) {
        return new SettingsCache(context);
    }

    private boolean updateValue(int i4, Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        boolean z4 = false;
        if (!uri.toString().startsWith(SYSTEM_URI_PREFIX) ? Settings.Secure.getInt(this.mResolver, lastPathSegment, i4) == 1 : Settings.System.getInt(this.mResolver, lastPathSegment, i4) == 1) {
            z4 = true;
        }
        this.mKeyCache.put(uri, Boolean.valueOf(z4));
        return z4;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mResolver.unregisterContentObserver(this);
    }

    public final boolean getValue(int i4, Uri uri) {
        return this.mKeyCache.containsKey(uri) ? ((Boolean) this.mKeyCache.get(uri)).booleanValue() : updateValue(i4, uri);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4, Uri uri) {
        boolean updateValue = updateValue(1, uri);
        if (((HashMap) this.mListenerMap).containsKey(uri)) {
            Iterator it = ((CopyOnWriteArrayList) ((HashMap) this.mListenerMap).get(uri)).iterator();
            while (it.hasNext()) {
                ((OnChangeListener) it.next()).onSettingsChanged(updateValue);
            }
        }
    }

    public final void register(Uri uri, OnChangeListener onChangeListener) {
        if (((HashMap) this.mListenerMap).containsKey(uri)) {
            ((CopyOnWriteArrayList) ((HashMap) this.mListenerMap).get(uri)).add(onChangeListener);
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        copyOnWriteArrayList.add(onChangeListener);
        ((HashMap) this.mListenerMap).put(uri, copyOnWriteArrayList);
        this.mResolver.registerContentObserver(uri, false, this);
    }

    public void setKeyCache(Map map) {
        this.mKeyCache = map;
    }

    public final void unregister(Uri uri, OnChangeListener onChangeListener) {
        List list = (List) ((HashMap) this.mListenerMap).get(uri);
        if (list == null) {
            return;
        }
        list.remove(onChangeListener);
        if (list.isEmpty()) {
            ((HashMap) this.mListenerMap).remove(uri);
        }
    }
}
