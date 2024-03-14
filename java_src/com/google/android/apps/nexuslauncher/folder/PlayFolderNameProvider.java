package com.google.android.apps.nexuslauncher.folder;

import R1.a;
import R1.i;
import R1.k;
import Y1.f;
import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class PlayFolderNameProvider extends FolderNameProvider {

    /* renamed from: d  reason: collision with root package name */
    public final i f7349d;

    public PlayFolderNameProvider(Context context) {
        this.f7349d = new a(context);
    }

    @Override // com.android.launcher3.folder.FolderNameProvider
    public final void getSuggestedFolderName(Context context, ArrayList arrayList, FolderNameInfos folderNameInfos) {
        getSuggestedFolderNameFromCategoryProvider(context, arrayList, folderNameInfos);
        super.getSuggestedFolderName(context, arrayList, folderNameInfos);
    }

    public void getSuggestedFolderNameFromCategoryProvider(Context context, ArrayList arrayList, FolderNameInfos folderNameInfos) {
        f fVar;
        byte[] bArr;
        CharSequence charSequence;
        i iVar = this.f7349d;
        if (iVar == null) {
            folderNameInfos.setStatus(8);
            return;
        }
        HashSet hashSet = new HashSet();
        IntSparseArrayMap intSparseArrayMap = this.mFolderInfos;
        if (intSparseArrayMap != null) {
            Iterator it = intSparseArrayMap.iterator();
            while (it.hasNext()) {
                FolderInfo folderInfo = (FolderInfo) it.next();
                if (folderInfo != null && (charSequence = folderInfo.title) != null) {
                    hashSet.add(charSequence.toString().toLowerCase());
                }
            }
        }
        List<String> list = (List) arrayList.stream().filter(new Predicate() { // from class: R1.g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).itemType == 0;
                    default:
                        return Objects.nonNull((String) obj);
                }
            }
        }).map(new Function() { // from class: R1.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).getTargetComponent();
                    default:
                        ComponentName componentName = (ComponentName) obj;
                        if (componentName == null) {
                            return null;
                        }
                        return componentName.getPackageName();
                }
            }
        }).map(new Function() { // from class: R1.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).getTargetComponent();
                    default:
                        ComponentName componentName = (ComponentName) obj;
                        if (componentName == null) {
                            return null;
                        }
                        return componentName.getPackageName();
                }
            }
        }).filter(new Predicate() { // from class: R1.g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).itemType == 0;
                    default:
                        return Objects.nonNull((String) obj);
                }
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            folderNameInfos.setStatus(512);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : list) {
            a aVar = (a) iVar;
            k kVar = null;
            if (str != null && (fVar = aVar.f1648a) != null) {
                fVar.f2288b.setAlarm(15000);
                byte[] bytes = ("P" + Integer.toHexString(str.hashCode())).getBytes(StandardCharsets.UTF_8);
                V2.a aVar2 = fVar.f2289c;
                if (aVar2 != null) {
                    synchronized (aVar2) {
                        aVar2.f1863c = 0;
                        bArr = aVar2.a(bytes);
                    }
                } else {
                    bArr = null;
                }
                if (bArr != null) {
                    kVar = new k(new String(bArr, StandardCharsets.UTF_8));
                }
            }
            if (kVar == null) {
                folderNameInfos.setStatus(16);
            } else {
                arrayList2.add(kVar);
            }
        }
        if (arrayList2.isEmpty()) {
            folderNameInfos.setStatus(32);
            return;
        }
        R1.f.a(arrayList2, list.size(), iVar, hashSet, folderNameInfos);
        folderNameInfos.setStatus(1);
    }

    public PlayFolderNameProvider(i iVar) {
        this.f7349d = iVar;
        if (this.mFolderInfos == null) {
            this.mFolderInfos = new IntSparseArrayMap();
        }
    }
}
