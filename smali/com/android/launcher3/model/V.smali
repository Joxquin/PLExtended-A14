.class public final synthetic Lcom/android/launcher3/model/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/V;->a:Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/V;->a:Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->t(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
