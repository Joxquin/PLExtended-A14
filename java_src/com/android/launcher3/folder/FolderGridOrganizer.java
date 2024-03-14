package com.android.launcher3.folder;

import android.graphics.Point;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class FolderGridOrganizer {
    private int mCountX;
    private int mCountY;
    private final int mMaxCountX;
    private final int mMaxCountY;
    private final int mMaxItemsPerPage;
    private int mNumItemsInFolder;
    private final Point mPoint = new Point();
    private boolean mDisplayingUpperLeftQuadrant = false;

    public FolderGridOrganizer(InvariantDeviceProfile invariantDeviceProfile) {
        int i4 = invariantDeviceProfile.numFolderColumns;
        this.mMaxCountX = i4;
        int i5 = invariantDeviceProfile.numFolderRows;
        this.mMaxCountY = i5;
        this.mMaxItemsPerPage = i4 * i5;
    }

    public final int getCountX() {
        return this.mCountX;
    }

    public final int getCountY() {
        return this.mCountY;
    }

    public final int getMaxItemsPerPage() {
        return this.mMaxItemsPerPage;
    }

    public final Point getPosForRank(int i4) {
        int i5 = i4 % this.mMaxItemsPerPage;
        Point point = this.mPoint;
        int i6 = this.mCountX;
        point.x = i5 % i6;
        point.y = i5 / i6;
        return point;
    }

    public final boolean isItemInPreview(int i4, int i5) {
        if (i4 <= 0 && !this.mDisplayingUpperLeftQuadrant) {
            return i5 < 4;
        }
        int i6 = this.mCountX;
        return i5 % i6 < 2 && i5 / i6 < 2;
    }

    public final ArrayList previewItemsForPage(int i4, List list) {
        ArrayList arrayList = new ArrayList();
        int i5 = this.mCountX * this.mCountY;
        int i6 = i5 * i4;
        int min = Math.min(i5 + i6, list.size());
        int i7 = 0;
        while (i6 < min) {
            if (isItemInPreview(i4, i7)) {
                arrayList.add(list.get(i6));
            }
            if (arrayList.size() == 4) {
                break;
            }
            i6++;
            i7++;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setContentSize(int r9) {
        /*
            r8 = this;
            int r0 = r8.mNumItemsInFolder
            if (r9 == r0) goto L68
            int r0 = r8.mCountX
            int r1 = r8.mCountY
            r2 = 1
            r3 = 0
            int r4 = r8.mMaxItemsPerPage
            int r5 = r8.mMaxCountX
            int r6 = r8.mMaxCountY
            if (r9 < r4) goto L16
            r4 = r2
            r0 = r5
            r1 = r6
            goto L17
        L16:
            r4 = r3
        L17:
            if (r4 != 0) goto L5b
            int r4 = r0 * r1
            if (r4 >= r9) goto L34
            if (r0 <= r1) goto L21
            if (r1 != r6) goto L26
        L21:
            if (r0 >= r5) goto L26
            int r4 = r0 + 1
            goto L2d
        L26:
            if (r1 >= r6) goto L2c
            int r4 = r1 + 1
            r7 = r0
            goto L2f
        L2c:
            r4 = r0
        L2d:
            r7 = r4
            r4 = r1
        L2f:
            if (r4 != 0) goto L50
            int r4 = r4 + 1
            goto L50
        L34:
            int r4 = r1 + (-1)
            int r7 = r4 * r0
            if (r7 < r9) goto L42
            if (r1 < r0) goto L42
            int r4 = java.lang.Math.max(r3, r4)
            r7 = r0
            goto L50
        L42:
            int r4 = r0 + (-1)
            int r7 = r4 * r1
            if (r7 < r9) goto L4d
            int r4 = java.lang.Math.max(r3, r4)
            goto L4e
        L4d:
            r4 = r0
        L4e:
            r7 = r4
            r4 = r1
        L50:
            if (r7 != r0) goto L56
            if (r4 != r1) goto L56
            r0 = r2
            goto L57
        L56:
            r0 = r3
        L57:
            r1 = r4
            r4 = r0
            r0 = r7
            goto L17
        L5b:
            r8.mCountX = r0
            r8.mCountY = r1
            r0 = 4
            if (r9 <= r0) goto L63
            goto L64
        L63:
            r2 = r3
        L64:
            r8.mDisplayingUpperLeftQuadrant = r2
            r8.mNumItemsInFolder = r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.FolderGridOrganizer.setContentSize(int):void");
    }

    public final void setFolderInfo(FolderInfo folderInfo) {
        setContentSize(folderInfo.contents.size());
    }

    public final boolean updateRankAndPos(int i4, ItemInfo itemInfo) {
        Point posForRank = getPosForRank(i4);
        if (posForRank.equals(itemInfo.cellX, itemInfo.cellY) && i4 == itemInfo.rank) {
            return false;
        }
        itemInfo.rank = i4;
        itemInfo.cellX = posForRank.x;
        itemInfo.cellY = posForRank.y;
        return true;
    }
}
