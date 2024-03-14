.class public final LV1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final b:LX1/u;

.field public final c:LX1/f;

.field public final d:LV1/k;

.field public final e:LV1/l;

.field public final f:LV1/t;

.field public final g:Ljava/util/function/Supplier;

.field public final h:LX1/l;

.field public final i:LX1/l;

.field public final j:Z

.field public final k:Lcom/android/launcher3/logging/StatsLogManager;

.field public final l:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

.field public m:Z

.field public n:LX1/t;

.field public final o:LV1/h;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;LX1/u;LX1/f;LV1/k;LV1/l;LV1/t;LX1/k;LX1/l;LX1/l;ZLandroid/content/SharedPreferences;ZLcom/android/launcher3/logging/StatsLogManager;Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p11, 0x0

    iput-boolean p11, p0, LV1/j;->m:Z

    new-instance p11, LV1/h;

    invoke-direct {p11, p0}, LV1/h;-><init>(LV1/j;)V

    iput-object p11, p0, LV1/j;->o:LV1/h;

    iput-object p1, p0, LV1/j;->a:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object p2, p0, LV1/j;->b:LX1/u;

    iput-object p3, p0, LV1/j;->c:LX1/f;

    iput-object p4, p0, LV1/j;->d:LV1/k;

    iput-object p5, p0, LV1/j;->e:LV1/l;

    iput-object p6, p0, LV1/j;->f:LV1/t;

    iput-object p7, p0, LV1/j;->g:Ljava/util/function/Supplier;

    iput-object p8, p0, LV1/j;->h:LX1/l;

    iput-object p9, p0, LV1/j;->i:LX1/l;

    iput-boolean p10, p0, LV1/j;->j:Z

    iput-object p13, p0, LV1/j;->k:Lcom/android/launcher3/logging/StatsLogManager;

    iput-object p14, p0, LV1/j;->l:Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    return-void
.end method
