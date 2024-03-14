.class public final synthetic Lcom/android/quickstep/logging/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/l;->a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/logging/l;->a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->b(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
