.class public final Le/y;
.super Le/A;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Le/D;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/D;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le/y;->c:I

    .line 3
    iput-object p1, p0, Le/y;->d:Le/D;

    invoke-direct {p0, p1}, Le/A;-><init>(Le/D;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Le/y;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/D;Le/O;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le/y;->c:I

    .line 1
    iput-object p1, p0, Le/y;->d:Le/D;

    invoke-direct {p0, p1}, Le/A;-><init>(Le/D;)V

    .line 2
    iput-object p2, p0, Le/y;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Le/y;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v0, v0, Le/y;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :goto_1
    check-cast v0, Le/O;

    iget-object v1, v0, Le/O;->c:Le/N;

    iget-wide v4, v1, Le/N;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_2

    iget-boolean v0, v1, Le/N;->a:Z

    goto/16 :goto_b

    :cond_2
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    iget-object v6, v0, Le/O;->a:Landroid/content/Context;

    invoke-static {v6, v4}, LC/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v7, "Failed to get last known location"

    const-string v8, "TwilightManager"

    const/4 v9, 0x0

    iget-object v10, v0, Le/O;->b:Landroid/location/LocationManager;

    if-nez v4, :cond_4

    const-string v0, "network"

    :try_start_0
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v9

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, v9

    :goto_4
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v0}, LC/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gps"

    :try_start_1
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-lez v0, :cond_7

    goto :goto_6

    :cond_6
    if-eqz v9, :cond_7

    :goto_6
    move-object v4, v9

    :cond_7
    if-eqz v4, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Le/M;->d:Le/M;

    if-nez v0, :cond_8

    new-instance v0, Le/M;

    invoke-direct {v0}, Le/M;-><init>()V

    sput-object v0, Le/M;->d:Le/M;

    :cond_8
    sget-object v0, Le/M;->d:Le/M;

    const-wide/32 v16, 0x5265c00

    sub-long v13, v6, v16

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Le/M;->a(DDJ)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    move-object v9, v0

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Le/M;->a(DDJ)V

    iget v8, v0, Le/M;->c:I

    if-ne v8, v3, :cond_9

    move v5, v3

    :cond_9
    iget-wide v13, v0, Le/M;->b:J

    iget-wide v11, v0, Le/M;->a:J

    add-long v15, v16, v6

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v17

    move-object v8, v0

    move-wide/from16 v19, v11

    move-wide/from16 v11, v17

    move-wide/from16 v17, v13

    move-wide v13, v15

    invoke-virtual/range {v8 .. v14}, Le/M;->a(DDJ)V

    iget-wide v8, v0, Le/M;->b:J

    const-wide/16 v10, -0x1

    cmp-long v0, v17, v10

    if-eqz v0, :cond_d

    cmp-long v0, v19, v10

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    cmp-long v0, v6, v19

    const-wide/16 v10, 0x0

    if-lez v0, :cond_b

    add-long/2addr v8, v10

    goto :goto_7

    :cond_b
    cmp-long v0, v6, v17

    if-lez v0, :cond_c

    add-long v8, v19, v10

    goto :goto_7

    :cond_c
    add-long v8, v17, v10

    :goto_7
    const-wide/32 v6, 0xea60

    add-long/2addr v8, v6

    goto :goto_9

    :cond_d
    :goto_8
    const-wide/32 v8, 0x2932e00

    add-long/2addr v8, v6

    :goto_9
    iput-boolean v5, v1, Le/N;->a:Z

    iput-wide v8, v1, Le/N;->b:J

    goto :goto_a

    :cond_e
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_f

    const/16 v1, 0x16

    if-lt v0, v1, :cond_10

    :cond_f
    move v5, v3

    :cond_10
    :goto_a
    move v0, v5

    :goto_b
    if-eqz v0, :cond_11

    goto :goto_c

    :cond_11
    move v2, v3

    :goto_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
