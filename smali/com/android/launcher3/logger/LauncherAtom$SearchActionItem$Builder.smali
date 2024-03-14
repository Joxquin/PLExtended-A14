.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->c()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setPackageName$1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->a(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle$1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->b(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V

    return-void
.end method
