package com.android.launcher3.model.data;

import O0.f;
import O0.g;
import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ContentWriter;
import com.android.systemui.shared.system.PeopleProviderUtils;
import java.util.Arrays;
/* loaded from: classes.dex */
public class WorkspaceItemInfo extends ItemInfoWithIcon {
    public CharSequence disabledMessage;
    public Intent intent;
    public int options;
    private String[] personKeys;
    public int status;

    public WorkspaceItemInfo() {
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.itemType = 0;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    public final ItemInfoWithIcon clone() {
        return new WorkspaceItemInfo(this);
    }

    public final String getDeepShortcutId() {
        if (this.itemType == 6) {
            return this.intent.getStringExtra(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID);
        }
        return null;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final Intent getIntent() {
        return this.intent;
    }

    public final String[] getPersonKeys() {
        return this.personKeys;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ComponentName getTargetComponent() {
        ComponentName targetComponent = super.getTargetComponent();
        if (targetComponent == null && hasStatusFlag(11)) {
            String str = this.intent.getPackage();
            if (str == null) {
                return null;
            }
            return new ComponentName(str, ".");
        }
        return targetComponent;
    }

    public final boolean hasPromiseIconUi() {
        return hasStatusFlag(3) && !hasStatusFlag(8);
    }

    public final boolean hasStatusFlag(int i4) {
        return (this.status & i4) != 0;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put(this.title);
        contentWriter.put(this.intent);
        contentWriter.put("options", Integer.valueOf(this.options));
        contentWriter.put("restored", Integer.valueOf(this.status));
        if (usingLowResIcon()) {
            return;
        }
        contentWriter.putIcon(this.bitmap, this.user);
    }

    public final void updateFromDeepShortcutInfo(Context context, ShortcutInfo shortcutInfo) {
        this.intent = ShortcutKey.makeIntent(shortcutInfo.getId(), shortcutInfo.getPackage()).setComponent(shortcutInfo.getActivity());
        this.title = shortcutInfo.getShortLabel();
        CharSequence longLabel = shortcutInfo.getLongLabel();
        if (TextUtils.isEmpty(longLabel)) {
            longLabel = shortcutInfo.getShortLabel();
        }
        this.contentDescription = context.getPackageManager().getUserBadgedLabel(longLabel, this.user);
        if (shortcutInfo.isEnabled()) {
            this.runtimeStatusFlags &= -17;
        } else {
            this.runtimeStatusFlags |= 16;
        }
        this.disabledMessage = shortcutInfo.getDisabledMessage();
        if (Utilities.ATLEAST_P && shortcutInfo.getDisabledReason() == 100) {
            this.runtimeStatusFlags |= 4096;
        } else {
            this.runtimeStatusFlags &= -4097;
        }
        Person[] persons = shortcutInfo.getPersons();
        if (persons == null) {
            persons = Utilities.EMPTY_PERSON_ARRAY;
        }
        this.personKeys = persons.length == 0 ? Utilities.EMPTY_STRING_ARRAY : (String[]) Arrays.stream(persons).map(new f()).sorted().toArray(new g());
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public final Object mo1clone() {
        return new WorkspaceItemInfo(this);
    }

    public WorkspaceItemInfo(WorkspaceItemInfo workspaceItemInfo) {
        super(workspaceItemInfo);
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.title = workspaceItemInfo.title;
        this.intent = new Intent(workspaceItemInfo.intent);
        this.status = workspaceItemInfo.status;
        this.personKeys = (String[]) workspaceItemInfo.personKeys.clone();
    }

    public WorkspaceItemInfo(AppInfo appInfo) {
        super(appInfo);
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.title = Utilities.trim(appInfo.title);
        this.intent = new Intent(appInfo.intent);
    }

    public WorkspaceItemInfo(Context context, ShortcutInfo shortcutInfo) {
        this.personKeys = Utilities.EMPTY_STRING_ARRAY;
        this.user = shortcutInfo.getUserHandle();
        this.itemType = 6;
        updateFromDeepShortcutInfo(context, shortcutInfo);
    }
}
