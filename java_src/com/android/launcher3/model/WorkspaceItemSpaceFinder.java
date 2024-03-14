package com.android.launcher3.model;

import android.util.LongSparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class WorkspaceItemSpaceFinder {
    private static boolean findNextAvailableIconSpaceInScreen(LauncherAppState launcherAppState, ArrayList arrayList, int[] iArr, int i4, int i5) {
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
        GridOccupancy gridOccupancy = new GridOccupancy(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                gridOccupancy.markCells((ItemInfo) it.next());
            }
        }
        return gridOccupancy.findVacantCell(i4, i5, iArr);
    }

    public static int[] findSpaceForItem(LauncherAppState launcherAppState, BgDataModel bgDataModel, IntArray intArray, IntArray intArray2, int i4, int i5) {
        boolean z4;
        LongSparseArray longSparseArray = new LongSparseArray();
        synchronized (bgDataModel) {
            Iterator it = bgDataModel.itemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                if (itemInfo.container == -100) {
                    ArrayList arrayList = (ArrayList) longSparseArray.get(itemInfo.screenId);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        longSparseArray.put(itemInfo.screenId, arrayList);
                    }
                    arrayList.add(itemInfo);
                }
            }
        }
        int[] iArr = new int[2];
        int size = intArray.size();
        IntSet intSet = new IntSet();
        intSet.add(0);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i6 >= size) {
                z4 = false;
                break;
            }
            i7 = intArray.get(i6);
            if (!intSet.contains(i7) && findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList) longSparseArray.get(i7), iArr, i4, i5)) {
                z4 = true;
                break;
            }
            i6++;
        }
        if (!z4) {
            i7 = launcherAppState.getModel().getModelDbController().getNewScreenId();
            intArray.add(i7);
            intArray2.add(i7);
            if (!findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList) longSparseArray.get(i7), iArr, i4, i5)) {
                throw new RuntimeException("Can't find space to add the item");
            }
        }
        return new int[]{i7, iArr[0], iArr[1]};
    }
}
