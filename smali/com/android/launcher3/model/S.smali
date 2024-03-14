.class public final synthetic Lcom/android/launcher3/model/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/S;->a:Lcom/android/launcher3/util/IntArray;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/S;->a:Lcom/android/launcher3/util/IntArray;

    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method
