.class public final Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->b()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setTaskbarContainer$1(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {p1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->a(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method
