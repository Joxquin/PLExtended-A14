package com.android.launcher3.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.ModelDbController;
import com.android.launcher3.pm.UserCache;
/* loaded from: classes.dex */
public final class ContentWriter {
    private CommitParams mCommitParams;
    private final Context mContext;
    private BitmapInfo mIcon;
    private UserHandle mUser;
    private final ContentValues mValues;

    /* loaded from: classes.dex */
    public final class CommitParams {
        final ModelDbController mDbController;
        final String[] mSelectionArgs;
        final String mWhere;

        public CommitParams(ModelDbController modelDbController, String str, String[] strArr) {
            this.mDbController = modelDbController;
            this.mWhere = str;
            this.mSelectionArgs = strArr;
        }
    }

    public ContentWriter(Context context, CommitParams commitParams) {
        this(context);
        this.mCommitParams = commitParams;
    }

    public final int commit() {
        CommitParams commitParams = this.mCommitParams;
        if (commitParams != null) {
            ModelDbController modelDbController = commitParams.mDbController;
            ContentValues values = getValues(this.mContext);
            CommitParams commitParams2 = this.mCommitParams;
            return modelDbController.update("favorites", values, commitParams2.mWhere, commitParams2.mSelectionArgs);
        }
        return 0;
    }

    public final ContentValues getValues(Context context) {
        BitmapInfo bitmapInfo = this.mIcon;
        ContentValues contentValues = this.mValues;
        if (bitmapInfo != null && !LauncherAppState.getInstance(context).getIconCache().isDefaultIcon(this.mIcon, this.mUser)) {
            contentValues.put("icon", GraphicsUtils.flattenBitmap(this.mIcon.icon));
            this.mIcon = null;
        }
        return contentValues;
    }

    public final void put(String str, Integer num) {
        this.mValues.put(str, num);
    }

    public final void putIcon(BitmapInfo bitmapInfo, UserHandle userHandle) {
        this.mIcon = bitmapInfo;
        this.mUser = userHandle;
    }

    public final void put(String str, String str2) {
        this.mValues.put(str, str2);
    }

    public ContentWriter(Context context) {
        this(new ContentValues(), context);
    }

    public final void put(CharSequence charSequence) {
        this.mValues.put("title", charSequence == null ? null : charSequence.toString());
    }

    public ContentWriter(ContentValues contentValues, Context context) {
        this.mValues = contentValues;
        this.mContext = context;
    }

    public final void put(Intent intent) {
        this.mValues.put("intent", intent == null ? null : intent.toUri(0));
    }

    public final void put(UserHandle userHandle) {
        this.mValues.put("profileId", Long.valueOf(((UserCache) UserCache.INSTANCE.get(this.mContext)).getSerialNumberForUser(userHandle)));
    }
}
