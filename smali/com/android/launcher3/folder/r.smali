.class public final synthetic Lcom/android/launcher3/folder/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/FolderNameProvider;

.field public final synthetic b:Lcom/android/launcher3/folder/FolderNameInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/r;->a:Lcom/android/launcher3/folder/FolderNameProvider;

    iput-object p2, p0, Lcom/android/launcher3/folder/r;->b:Lcom/android/launcher3/folder/FolderNameInfos;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/folder/r;->a:Lcom/android/launcher3/folder/FolderNameProvider;

    iget-object p0, p0, Lcom/android/launcher3/folder/r;->b:Lcom/android/launcher3/folder/FolderNameInfos;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderNameInfos;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderNameInfos;->getScores()[Ljava/lang/Float;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/launcher3/folder/FolderNameInfos;->setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V

    :cond_4
    :goto_2
    return-void
.end method
