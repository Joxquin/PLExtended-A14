package R1;

import android.util.Pair;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderNameInfos;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class f {
    public static void a(List list, int i4, i iVar, Set set, FolderNameInfos folderNameInfos) {
        byte[] bArr;
        List constructPostingList = constructPostingList(list);
        Integer valueOf = Integer.valueOf(i4);
        Comparator reversed = Comparator.comparing(new b(0)).reversed();
        List<Pair> list2 = (List) constructPostingList.stream().map(new c(0, valueOf)).filter(new Predicate() { // from class: R1.d
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        Pair pair = (Pair) obj;
                        return ((Integer) pair.first).intValue() < 10000 || ((Float) pair.second).floatValue() >= 0.5f;
                    default:
                        return ((Integer) ((Pair) obj).first).intValue() < 10000;
                }
            }
        }).sorted(reversed).collect(Collectors.toList());
        if (FeatureFlags.FOLDER_NAME_MAJORITY_RANKING.get() && ((list2.isEmpty() || ((Float) ((Pair) list2.get(0)).second).floatValue() < 0.5f) && (valueOf.intValue() == 3 || valueOf.intValue() == 4))) {
            list2 = (List) constructPostingList.stream().filter(new Predicate() { // from class: R1.d
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            Pair pair = (Pair) obj;
                            return ((Integer) pair.first).intValue() < 10000 || ((Float) pair.second).floatValue() >= 0.5f;
                        default:
                            return ((Integer) ((Pair) obj).first).intValue() < 10000;
                    }
                }
            }).map(new c(1, valueOf)).sorted(reversed).collect(Collectors.toList());
        }
        if (list2.size() > 10) {
            list2.subList(10, list2.size()).clear();
        }
        ArrayList arrayList = new ArrayList();
        if (list2.isEmpty()) {
            folderNameInfos.setStatus(64);
        } else {
            for (Pair pair : list2) {
                int intValue = ((Integer) pair.first).intValue();
                Y1.f fVar = ((a) iVar).f1648a;
                String str = null;
                if (fVar != null) {
                    fVar.f2288b.setAlarm(15000);
                    byte[] bytes = ("L" + Integer.toHexString(intValue)).getBytes(StandardCharsets.UTF_8);
                    V2.a aVar = fVar.f2289c;
                    if (aVar != null) {
                        synchronized (aVar) {
                            aVar.f1863c = 0;
                            bArr = aVar.a(bytes);
                        }
                    } else {
                        bArr = null;
                    }
                    if (bArr != null) {
                        str = new String(bArr, StandardCharsets.UTF_8);
                    }
                }
                if (str == null) {
                    folderNameInfos.setStatus(128);
                } else {
                    arrayList.add(Pair.create(str, (Float) pair.second));
                }
            }
            if (arrayList.isEmpty()) {
                folderNameInfos.setStatus(256);
            }
        }
        Collections.sort(arrayList, suggestionsComparator(set));
        Iterator it = arrayList.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            Pair pair2 = (Pair) it.next();
            if (i5 < folderNameInfos.getLabels().length) {
                folderNameInfos.setLabel(i5, (CharSequence) pair2.first, (Float) pair2.second);
                i5++;
            }
        }
        if (arrayList.size() > 0 && ((Float) ((Pair) arrayList.get(0)).second).floatValue() >= 0.5f) {
            folderNameInfos.setStatus(2);
        }
        if (arrayList.size() > 0) {
            folderNameInfos.setStatus(4);
        }
    }

    public static float b(List list, int i4) {
        if (list.isEmpty()) {
            return 0.0f;
        }
        while (list.size() < i4) {
            list.add(Float.valueOf(0.01f));
        }
        return list.size() / ((Float) list.stream().map(new b(5)).reduce(new e()).orElse(Float.valueOf(0.0f))).floatValue();
    }

    private static List constructPostingList(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            k kVar = (k) it.next();
            if (kVar != null) {
                Iterator it2 = ((ArrayList) kVar.f1655a).iterator();
                while (it2.hasNext()) {
                    Pair pair = (Pair) it2.next();
                    float floatValue = ((Float) pair.second).floatValue() - (i4 * 0.01f);
                    if (floatValue > 0.01f) {
                        List list2 = (List) hashMap.getOrDefault(pair.first, new ArrayList());
                        list2.add(Float.valueOf(floatValue));
                        hashMap.put((Integer) pair.first, list2);
                    }
                }
                i4++;
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            ((List) entry.getValue()).sort(Comparator.reverseOrder());
        }
        return (List) hashMap.entrySet().stream().map(new b(1)).collect(Collectors.toList());
    }

    public static Comparator suggestionsComparator(Set set) {
        return Comparator.comparing(new b(2)).thenComparing(new c(2, set)).thenComparing(new b(3)).thenComparing(new b(4)).reversed();
    }
}
