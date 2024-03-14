package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Binder;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.model.ModelDbController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Callable;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4462d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class SqlArguments {
        public final String[] args;
        public final String table;
        public final String where;

        public SqlArguments(Uri uri, String str, String[] strArr) {
            if (uri.getPathSegments().size() == 1) {
                this.table = uri.getPathSegments().get(0);
                this.where = str;
                this.args = strArr;
            } else if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            } else if (!TextUtils.isEmpty(str)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            } else {
                this.table = uri.getPathSegments().get(0);
                this.where = "_id=" + ContentUris.parseId(uri);
                this.args = null;
            }
        }
    }

    private int executeControllerTask(final ToIntFunction toIntFunction) {
        if (Binder.getCallingPid() != Process.myPid()) {
            try {
                return ((Integer) Executors.MODEL_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.q0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        int i4 = LauncherProvider.f4462d;
                        final LauncherModel model = LauncherAppState.getInstance(LauncherProvider.this.getContext()).getModel();
                        int applyAsInt = toIntFunction.applyAsInt(model.getModelDbController());
                        if (applyAsInt > 0) {
                            Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: com.android.launcher3.r0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LauncherModel.this.forceReload();
                                }
                            });
                        }
                        return Integer.valueOf(applyAsInt);
                    }
                }).get()).intValue();
            } catch (Exception e4) {
                throw new IllegalStateException(e4);
            }
        }
        throw new IllegalArgumentException("Same process should call model directly");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        final SqlArguments sqlArguments = new SqlArguments(uri, str, strArr);
        return executeControllerTask(new ToIntFunction() { // from class: com.android.launcher3.p0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                LauncherProvider.SqlArguments sqlArguments2 = LauncherProvider.SqlArguments.this;
                int i4 = LauncherProvider.f4462d;
                return ((ModelDbController) obj).delete(sqlArguments2.table, sqlArguments2.where, sqlArguments2.args);
            }
        });
    }

    @Override // android.content.ContentProvider
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        LauncherAppState launcherAppState = (LauncherAppState) LauncherAppState.INSTANCE.getNoCreate();
        if (launcherAppState == null || !launcherAppState.getModel().isModelLoaded()) {
            return;
        }
        launcherAppState.getModel().dumpState("", fileDescriptor, printWriter, strArr);
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        String str;
        String str2 = null;
        if (uri.getPathSegments().size() == 1) {
            str = uri.getPathSegments().get(0);
        } else if (uri.getPathSegments().size() != 2) {
            throw new IllegalArgumentException("Invalid URI: " + uri);
        } else if (!TextUtils.isEmpty(null)) {
            throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
        } else {
            str = uri.getPathSegments().get(0);
            str2 = "_id=" + ContentUris.parseId(uri);
        }
        return TextUtils.isEmpty(str2) ? androidx.constraintlayout.widget.j.a("vnd.android.cursor.dir/", str) : androidx.constraintlayout.widget.j.a("vnd.android.cursor.item/", str);
    }

    @Override // android.content.ContentProvider
    public final Uri insert(final Uri uri, final ContentValues contentValues) {
        int executeControllerTask = executeControllerTask(new ToIntFunction() { // from class: com.android.launcher3.n0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int allocateAppWidgetId;
                LauncherProvider launcherProvider = LauncherProvider.this;
                ContentValues contentValues2 = contentValues;
                Uri uri2 = uri;
                ModelDbController modelDbController = (ModelDbController) obj;
                int i4 = LauncherProvider.f4462d;
                launcherProvider.getClass();
                contentValues2.put("_id", Integer.valueOf(modelDbController.generateNewItemId()));
                Integer asInteger = contentValues2.getAsInteger("itemType");
                if (asInteger != null && asInteger.intValue() == 4 && !contentValues2.containsKey("appWidgetId")) {
                    ComponentName unflattenFromString = ComponentName.unflattenFromString(contentValues2.getAsString("appWidgetProvider"));
                    if (unflattenFromString == null) {
                        return 0;
                    }
                    Context context = launcherProvider.getContext();
                    LauncherWidgetHolder newInstance = ((LauncherWidgetHolder.HolderFactory) ResourceBasedOverride.Overrides.getObject(R.string.widget_holder_factory_class, context, LauncherWidgetHolder.HolderFactory.class)).newInstance(context, null);
                    try {
                        try {
                            allocateAppWidgetId = newInstance.allocateAppWidgetId();
                            contentValues2.put("appWidgetId", Integer.valueOf(allocateAppWidgetId));
                        } catch (RuntimeException e4) {
                            Log.e("LauncherProvider", "Failed to initialize external widget", e4);
                        }
                        if (!AppWidgetManager.getInstance(launcherProvider.getContext()).bindAppWidgetIdIfAllowed(allocateAppWidgetId, unflattenFromString)) {
                            newInstance.deleteAppWidgetId(allocateAppWidgetId);
                            return 0;
                        }
                    } finally {
                        newInstance.destroy();
                    }
                }
                if (uri2.getPathSegments().size() == 1) {
                    return modelDbController.insert(uri2.getPathSegments().get(0), contentValues2);
                }
                throw new IllegalArgumentException("Invalid URI: " + uri2);
            }
        });
        if (executeControllerTask < 0) {
            return null;
        }
        return ContentUris.withAppendedId(uri, executeControllerTask);
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        MainProcessInitializer.initialize(getContext().getApplicationContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, final String[] strArr, String str, String[] strArr2, final String str2) {
        final SqlArguments sqlArguments = new SqlArguments(uri, str, strArr2);
        new SQLiteQueryBuilder().setTables(sqlArguments.table);
        final Cursor[] cursorArr = new Cursor[1];
        executeControllerTask(new ToIntFunction() { // from class: com.android.launcher3.o0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                Cursor[] cursorArr2 = cursorArr;
                LauncherProvider.SqlArguments sqlArguments2 = sqlArguments;
                String[] strArr3 = strArr;
                String str3 = str2;
                int i4 = LauncherProvider.f4462d;
                cursorArr2[0] = ((ModelDbController) obj).query(sqlArguments2.table, strArr3, sqlArguments2.where, sqlArguments2.args, str3);
                return 0;
            }
        });
        return cursorArr[0];
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, final ContentValues contentValues, String str, String[] strArr) {
        final SqlArguments sqlArguments = new SqlArguments(uri, str, strArr);
        return executeControllerTask(new ToIntFunction() { // from class: com.android.launcher3.m0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                LauncherProvider.SqlArguments sqlArguments2 = LauncherProvider.SqlArguments.this;
                ContentValues contentValues2 = contentValues;
                int i4 = LauncherProvider.f4462d;
                return ((ModelDbController) obj).update(sqlArguments2.table, contentValues2, sqlArguments2.where, sqlArguments2.args);
            }
        });
    }
}
